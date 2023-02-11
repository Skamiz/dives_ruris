-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
default = {}

default.LIGHT_MAX = 15

-- GUI related stuff
default.gui_bg = "bgcolor[#080808BB;false]"
default.gui_bg_img = "background[5,5;1,1;gui_formbg.png;false]"
default.gui_slots = "listcolors[#000000;#006600;#ffffff;#006600;#ffffff]" -- [#00000069;#5A5A5A;#141318;#30434C;#FFF]
default.chestgui_bg_img = "background[5,5;1,1;chestui.png;true]"

function default.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

-- default.gui_survival_form = "size[8,8.5]"..
-- 			default.gui_bg..
-- 			default.gui_bg_img..
-- 			default.gui_slots..
-- 			"list[current_player;main;0,4.25;8,1;]"..
-- 			"list[current_player;main;0,5.5;8,3;8]"..
-- 			"list[current_player;craft;3,0.5;3,3;]"..
-- 			"list[current_player;craftpreview;7,1.5;1,1;]"..
-- 			"image[6,1.5;1,1;gui_craft_arrow_bg.png]"..
-- 			default.get_hotbar_bg(0,4.25)

-- Load files
dofile(minetest.get_modpath("default").."/functions.lua")
dofile(minetest.get_modpath("default").."/nodes.lua")
dofile(minetest.get_modpath("default").."/furnace.lua")
dofile(minetest.get_modpath("default").."/tools.lua")
dofile(minetest.get_modpath("default").."/craftitems.lua")
dofile(minetest.get_modpath("default").."/crafting.lua")
dofile(minetest.get_modpath("default").."/mapgen.lua")
dofile(minetest.get_modpath("default").."/player.lua")
dofile(minetest.get_modpath("default").."/trees.lua")
dofile(minetest.get_modpath("default").."/aliases.lua")
dofile(minetest.get_modpath("default").."/legacy.lua")
dofile(minetest.get_modpath("default").."/flowers.lua")
dofile(minetest.get_modpath("default").."/plants.lua")
dofile(minetest.get_modpath("default").."/food.lua")
dofile(minetest.get_modpath("default").."/fishing.lua")
dofile(minetest.get_modpath("default").."/node_rotation.lua")
dofile(minetest.get_modpath("default").."/torch.lua")

-- 10 slot hotbar key 1 - 0 (for ppl w/o a mouseweel)
hotbar_size = minetest.settings:get("hotbar_size") or 10

minetest.register_on_joinplayer(function(player)
	player:hud_set_hotbar_itemcount(hotbar_size)
	minetest.after(0.5,function()
		player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
	end)
end)

-- protect nodes which have an 'owner'
local old_is_protected = minetest.is_protected
minetest.is_protected = function(pos, name)
	if name then
		local player = minetest.get_player_by_name(name)
		if player and minetest.check_player_privs(player, "protection_bypass") then
			return false
		end
	end

	local meta = minetest.get_meta(pos)
	local owner = meta:get("owner")

	if owner and owner ~= name then
		return true
	else
		return old_is_protected(pos, name)
	end
end
--
-- minetest.register_node("default:glow_air", {
-- 	description = "Glowing Air",
-- 	inventory_image = "air.png",
-- 	wield_image = "air.png",
-- 	drawtype = "airlike",
-- 	light_source = 2,
-- 	paramtype = "light",
-- 	sunlight_propagates = true,
-- 	walkable = false,
-- 	pointable = false,
-- 	diggable = false,
-- 	buildable_to = true,
-- 	floodable = true,
-- 	air_equivalent = true,
-- 	drop = "",
-- 	groups = {not_in_creative_inventory=1},
-- })
-- minetest.register_alias_force("air", "default:glow_air")

-- minetest.override_item("air", {
-- 	light_source = 2,
-- })
-- local c_gair = minetest.get_content_id("default:glow_air")
-- -- TODO: override 'remove_node' to place glowing air instead
-- local c_air = minetest.CONTENT_AIR
--
-- local data = {}
--
-- minetest.register_on_generated(function(minp, maxp, blockseed)
-- 	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
-- 	local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
-- 	local flat_area = VoxelArea:new({MinEdge=emin, MaxEdge={x = emax.x, y = emin.y, z = emax.z}})
-- 	vm:get_data(data)
--
-- 	-- for k, v in pairs(data) do
-- 	-- 	if v == c_air then
-- 	-- 		data[k] = c_gair
-- 	-- 	end
-- 	-- end
--
-- 	for z = minp.z, maxp.z do
-- 		for y = minp.y, maxp.y do
-- 			for x = minp.x, maxp.x do
-- 				local vi = area:index(x, y, z)
--
-- 				if data[vi] == c_air then
-- 					data[vi] = c_gair
-- 				end
-- 			end
-- 		end
-- 	end
--
-- 	vm:set_data(data)
-- 	-- vm:set_lighting({day = 0, night = 0}, minp, maxp)
-- 	-- vm:calc_lighting()
-- 	vm:write_to_map()
-- end)
--
-- minetest.register_abm({
--     label = "Air to glow",
--     nodenames = {"air"},
--     interval = 1,
--     chance = 1,
--     min_y = basal_bottom,
--     max_y = basal_top,
--     action = function(pos, node, active_object_count, active_object_count_wider)
--         minetest.set_node(pos, {name = "default:glow_air"})
--     end,
-- })
