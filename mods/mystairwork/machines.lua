local material = {}
local shape = {}
local make_ok = {}
local anzahl = {}


minetest.register_node("mystairwork:machine", {
	description = "Stair WorkStation",
	tiles = {
		"mystairwork_machine_top.png",
		"mystairwork_machine_bottom.png",
		"mystairwork_machine_side2.png",
		"mystairwork_machine_side1.png",
		"mystairwork_machine_back.png",
		"mystairwork_machine_front.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2, cracky=3, dig_immediate=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.4375, -0.5, -0.4375, 0.4375, -0.3125, 0.4375},
			{-0.21875, -0.265625, 0, 0.21875, 0.015625, 0.25},
			{-0.21875, -0.265625, -0.15625, 0.21875, -0.109375, 0.03125},
			{-0.15625, -0.359375, -0.375, -0.09375, -0.265625, -0.25},
			{-0.25, -0.359375, 0.15625, 0.25, -0.265625, 0.21875},
			{-0.25, -0.355469, -0.0957031, 0.25, -0.269531, -0.0292969},
			{-0.171875, -0.339844, -0.332031, 0.171875, -0.285156, -0.292969},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5}
	},

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos);
		meta:set_string("owner",  (placer:get_player_name() or ""));
		meta:set_string("infotext",  "Stair Workstation is empty (owned by " .. (placer:get_player_name() or "") .. ")");
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("ingot") then
			return false
		elseif not inv:is_empty("res") then
			return false
		end
		return true
	end,

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "size[10,7]"..
			"background[-0.15,-0.25;10.40,8;mystairwork_background.png]"..
			"listcolors[#001100;#006600;#ffffff;#006600;#ffffff]"..
			"list[context;ingot;7,2;1,1;]"..
			"list[context;res;8,2;1,1;]"..
			"label[7,1.5;Input:]"..
			"label[8,1.5;Output:]"..
			-- "label[0.5,4.5;Choose Stair-element:]"..

			"listring[context;res]"..
			"listring[current_player;main]"..
			"listring[context;ingot]"..
			"listring[current_player;main]"..

			"label[1,0;Stair's:]"..
			"image_button[1,0.5;1,1;mystairwork_mach1.png;stair; ]"..
			"image_button[2,0.5;1,1;mystairwork_mach2.png;stair_out; ]"..
			"image_button[3,0.5;1,1;mystairwork_mach3.png;stair_inn; ]"..
			"image_button[4,0.5;1,1;mystairwork_mach4.png;stair_pillar; ]"..
			"image_button[5,0.5;1,1;mystairwork_mach5.png;stair_slab; ]"..
			"image_button[6,0.5;1,1;mystairwork_mach6.png;stair_sub; ]"..

			"label[1,1.5;Ramp's:]"..
			"image_button[1,2;1,1;mystairwork_mach7.png;ramp; ]"..
			"image_button[2,2;1,1;mystairwork_mach8.png;ramp_out; ]"..
			"image_button[3,2;1,1;mystairwork_mach9.png;ramp_inn; ]"..
			--"image_button[4,2;1,1;mystairwork_mach10.png;ramp_flat; ]"..
			--"image_button[5,2;1,1;mystairwork_mach11.png;ramp_massiv; ]"..

			"list[current_player;main;1,3;8,4;]")
		meta:set_string("infotext", "Stair WorkStation")
		local inv = meta:get_inventory()
		inv:set_size("ingot", 1)
		inv:set_size("res", 1)
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()

		-----------------------------
		if fields["stair"]
		or fields["stair_out"]
		or fields["stair_inn"]
		or fields["stair_pillar"]
		or fields["stair_slab"]
		or fields["stair_sub"]
		or fields["ramp"]
		or fields["ramp_out"]
		or fields["ramp_inn"]
		then

			--Crown Mould-----------------------------------------
			if fields["stair"] then
				make_ok = "0"
				anzahl = "2"
				shape = "mystairwork:stair_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["stair_out"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mystairwork:stair_out_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["stair_inn"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mystairwork:stair_inn_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["stair_pillar"] then
				make_ok = "0"
				anzahl = "4"
				shape = "mystairwork:stair_pillar_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["stair_slab"] then
				make_ok = "0"
				anzahl = "2"
				shape = "mystairwork:stair_slab_"
				if inv:is_empty("ingot") then
					return
				end
			end


			if fields["stair_sub"] then
				make_ok = "0"
				anzahl = "2"
				shape = "mystairwork:stair_sub_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["ramp"] then
				make_ok = "0"
				anzahl = "2"
				shape = "mystairwork:ramp_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["ramp_out"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mystairwork:ramp_out_"
				if inv:is_empty("ingot") then
					return
				end
			end

			if fields["ramp_inn"] then
				make_ok = "0"
				anzahl = "1"
				shape = "mystairwork:ramp_inn_"
				if inv:is_empty("ingot") then
					return
				end
			end

			local ingotstack = inv:get_stack("ingot", 1)
		    local resstack = inv:get_stack("res", 1)
			----------------------------------------------------------------------
			--Register Items
			----------------------------------------------------------------------

			for k, v in pairs(mystairwork.registered_materials) do
				if ingotstack:get_name() == k then
					material = v.material_name
					make_ok = "1"
				end
			end


			if make_ok == "1" then
				local give = {}
				for i = 0, anzahl-1 do
					give[i+1]=inv:add_item("res",shape..material)
				end
				ingotstack:take_item()
				inv:set_stack("ingot",1,ingotstack)
			end


		end
	end
})

--Craft

minetest.register_craft({
	output = 'mystairwork:machine',
	recipe = {
		{'default:steel_ingot', '', ''},
		{'default:stone', 'group:wood', ''},
		{'default:stone', "default:stone", 'default:steel_ingot'},
	},
})
