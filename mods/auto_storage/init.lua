local slot_conf = {}

local function save_locked(player)
    local meta = player:get_meta()
    meta:set_string("lock_conf", minetest.serialize(slot_conf[player:get_player_name()]))
end

minetest.register_on_joinplayer(
    function(player)
        local name = player:get_player_name()
        local inv = player:get_inventory()
        local size = inv:get_size("main")

        local meta = player:get_meta()

        local locked = minetest.deserialize(meta:get("lock_conf")) or {}
        for i = 1, size do
            if locked[i] == nil then
                locked[i] = i <= 8
            end
        end

        slot_conf[name] = locked
    end
)

local orig_get = sfinv.pages["sfinv:crafting"].get
sfinv.override_page("sfinv:crafting", {
    get = function(self, player, context)
        local fs = orig_get(self, player, context)
        return fs .. "image_button[7,4.2;1,1;as_store_to_nearby.png;store_to_nearby;]"
    end
})

if minetest.get_modpath("sfinv") then
	sfinv.register_page("auto_storage:config", {
	    title = "Slot Conf",
	    get = function(self, player, context)
            local locked = slot_conf[player:get_player_name()]
			local formspec = ""
                .. "label[0,4;Here you can configure which slots can be auto-stored.]"

            for i = 1, 8 do
                local image = locked[i] and "as_locked.png" or "as_unlocked.png"
                formspec = formspec
                    .. "image_button[" .. i-1 .. ",0;1,1;" .. image .. ";slot_" .. i .. ";]"
            end

            for i = 9, 32 do
                local image = locked[i] and "as_locked.png" or "as_unlocked.png"
                formspec = formspec
                    .. "image_button[" .. (i-1)%8 .. "," .. math.floor((i-1)/8) + 0.15 .. ";1,1;" .. image .. ";slot_" .. i .. ";]"
            end


	        return sfinv.make_formspec(player, context, formspec, true)
	    end
	})
end

local function store_to_nearby(player, range)
    local name = player:get_player_name()
    local p_inv = player:get_inventory()
    local locked = slot_conf[name]

    local p_pos = player:get_pos():round()
    p_pos.y = p_pos.y + 1

    local storage = minetest.find_nodes_in_area(p_pos:subtract(range), p_pos:add(range), {"group:chests"}, false)
    for _, s_pos in pairs(storage) do
        local s_inv = minetest.get_inventory({type = "node", pos = s_pos})

        for i, lock in ipairs(locked) do
            if not lock then
                local stack = p_inv:get_stack("main", i)
                if not stack:is_empty() then
                    if s_inv:contains_item("main", stack:get_name(), false) then
                        local leftover = s_inv:add_item("main", stack)
                        p_inv:set_stack("main", i, leftover)
                    end
                end
            end
        end
    end
end

minetest.register_on_player_receive_fields(function(player, formname, fields)
    local name = player:get_player_name()
    local locked = slot_conf[name]
    if fields["store_to_nearby"] then
        store_to_nearby(player, 2)
        return true
    end
    for i = 1, 32 do
        if fields["slot_" .. i] then
            locked[i] = not locked[i]
            save_locked(player)
            sfinv.set_page(player, "auto_storage:config")
            return true
        end
    end
end)
