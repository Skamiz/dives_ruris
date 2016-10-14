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
	local meta = minetest.env:get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Stair Workstation is empty (owned by " .. (placer:get_player_name() or "") .. ")");
		end,

can_dig = function(pos,player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "invsize[10,7;]"..
		"background[-0.15,-0.25;10.40,8;mystairwork_background.png]"..
		"listcolors[#001100;#006600;#ffffff;#006600;#ffffff]"..
		"list[current_name;ingot;7,2;1,1;]"..
		"list[current_name;res;8,2;1,1;]"..
		"label[7,1.5;Input:]"..
		"label[8,1.5;Output:]"..
		-- "label[0.5,4.5;Choose Stair-element:]"..

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
	local meta = minetest.env:get_meta(pos)
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
-- or fields["ramp_flat"]
-- or fields["ramp_massiv"]
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
	
	--[[
	
	if fields["ramp_flat"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mystairwork:ramp_flat_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	if fields["ramp_massiv"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mystairwork:ramp_massiv_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	--]]
	
	local ingotstack = inv:get_stack("ingot", 1)
    local resstack = inv:get_stack("res", 1)
----------------------------------------------------------------------
--Register Items
----------------------------------------------------------------------
		if ingotstack:get_name()=="default:sandstone" then
				material = "default_sandstone"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:desert_sand" then
				material = "default_desert_sand"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:clay" then
				material = "default_clay"
				make_ok = "1"
		end

		if ingotstack:get_name()=="wool:white" then
				material = "millwork_white"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:desert_stone" then
				material = "default_desert_stone"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:cobble" then
				material = "default_cobble"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:stone" then
				material = "default_stone"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:cactus" then
				material = "default_cactus"
				make_ok = "1"
		end

		if ingotstack:get_name()=="wool:white" then
				material = "millwork_white"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:sand" then
				material = "default_sand"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:wood" then
				material = "default_wood"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:pinewood" then
				material = "default_pinewood"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:dirt" then
				material = "default_dirt"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:brick" then
				material = "default_brick"
				make_ok = "1"
		end
		
		if ingotstack:get_name()=="default:floor_w_wood" then
				material = "default_floor_w_wood"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:floor_w_oakolive" then
				material = "default_floor_w_oakolive"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:floor_w_junglebirch" then
				material = "default_floor_w_junglebirch"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:bronzeblock" then
				material = "default_bronze_block"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:coalblock" then
				material = "default_coal_block"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:copperblock" then
				material = "default_copper_block"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:desert_cobble" then
				material = "default_desert_cobble"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:diamondblock" then
				material = "default_diamond_block"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:glass" then
				material = "default_glass"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:goldblock" then
				material = "default_gold_block"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:gravel" then
				material = "default_gravel"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:ice" then
				material = "default_ice"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:jungletree" then
				material = "default_jungletree"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:junglewood" then
				material = "default_junglewood"
				make_ok = "1"
		end

		--[[ if ingotstack:get_name()=="default:lava_source" then
				material = "default_lava"
				make_ok = "1"
		end --]]
--[[
		if ingotstack:get_name()=="default:mese" then
				material = "default_mese"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:mossycobble" then
				material = "default_mossycobble"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:obsidian" then
				material = "default_obsidian"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:obsidian_glass" then
				material = "default_obsidian_glass"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:obsidianbrick" then
				material = "default_obsidian_brick"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:pinetree" then
				material = "default_pinetree"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:sanddstonebrick" then
				material = "default_sandstone_brick"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:snowblock" then
				material = "default_snow"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:steelblock" then
				material = "default_steel_block"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:stonebrick" then
				material = "default_stone_brick"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:tree" then
				material = "default_tree"
				make_ok = "1"
		end

		--[[ if ingotstack:get_name()=="default:water_source" then
				material = "default_water"
				make_ok = "1"
		end --]]

		if ingotstack:get_name()=="farming:straw" then
				material = "farming_straw"
				make_ok = "1"
		end 
		
		---------------
		-- Planet Glunggi
		
		if ingotstack:get_name()=="default:wood_palm" then
				material = "default_wood_palm"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_orange" then
				material = "default_wood_orange"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_olive" then
				material = "default_wood_olive"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_birch" then
				material = "default_wood_birch"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_poplar" then
				material = "default_wood_poplar"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_rubber" then
				material = "default_wood_rubber"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_oak" then
				material = "default_wood_oak"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_ahorn" then
				material = "default_wood_ahorn"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_pine" then
				material = "default_wood_pine"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:wood_jungle" then
				material = "default_wood_jungle"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_black" then
				material = "default_colwood_black"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_blue" then
				material = "default_colwood_blue"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_brown" then
				material = "default_colwood_brown"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_cyan" then
				material = "default_colwood_cyan"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_dark_green" then
				material = "default_colwood_dark_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_dark_grey" then
				material = "default_colwood_dark_grey"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_grey" then
				material = "default_colwood_grey"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_green" then
				material = "default_colwood_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_magenta" then
				material = "default_colwood_magenta"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_orange" then
				material = "default_colwood_orange"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_pink" then
				material = "default_colwood_pink"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_red" then
				material = "default_colwood_red"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_violet" then
				material = "default_colwood_violet"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_white" then
				material = "default_colwood_white"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:colwood_yellow" then
				material = "default_colwood_yellow"
				make_ok = "1"
		end 
		
		-- BRICKS
		
		if ingotstack:get_name()=="default:brick_black" then
				material = "default_brick_black"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_blue" then
				material = "default_brick_blue"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_brown" then
				material = "default_brick_brown"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_cyan" then
				material = "default_brick_cyan"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_dark_green" then
				material = "default_brick_dark_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_dark_grey" then
				material = "default_brick_dark_grey"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_green" then
				material = "default_brick_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_grey" then
				material = "default_brick_grey"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_magenta" then
				material = "default_brick_magenta"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_orange" then
				material = "default_brick_orange"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_pink" then
				material = "default_brick_pink"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_red" then
				material = "default_brick_red"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_violet" then
				material = "default_brick_violet"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_white" then
				material = "default_brick_white"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:brick_yellow" then
				material = "default_brick_yellow"
				make_ok = "1"
		end 
		
		-- MORE Stones
		
		if ingotstack:get_name()=="default:granite_brick" then
				material = "default_granite_brick"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:granite" then
				material = "default_granite"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:marble_brick" then
				material = "default_marble_brick"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:marble" then
				material = "default_marble"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_granite" then
				material = "default_floor_granite"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_stone" then
				material = "default_floor_stone"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_desertstone" then
				material = "default_floor_desertstone"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_sanddesertstone" then
				material = "default_floor_sanddesertstone"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_stonegranite" then
				material = "default_floor_stonegranite"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_sandstone" then
				material = "default_floor_sandstone"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_marble" then
				material = "default_floor_marble"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_yellow" then
				material = "default_floor_s_yellow"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_white" then
				material = "default_floor_s_white"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_violet" then
				material = "default_floor_s_violet"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_red" then
				material = "default_floor_s_red"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_pink" then
				material = "default_floor_s_pink"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_orange" then
				material = "default_floor_s_orange"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_magenta" then
				material = "default_floor_s_magenta"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_green" then
				material = "default_floor_s_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_dark_green" then
				material = "default_floor_s_dark_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_cyan" then
				material = "default_floor_s_cyan"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_brown" then
				material = "default_floor_s_brown"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_blue" then
				material = "default_floor_s_blue"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_black" then
				material = "default_floor_s_black"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_blackwhite" then
				material = "default_floor_s_blackwhite"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_whiteblue" then
				material = "default_floor_s_whiteblue"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_blueyellow" then
				material = "default_floor_s_blueyellow"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_yellowgreen" then
				material = "default_floor_s_yellowgreen"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_greengreen" then
				material = "default_floor_s_greengreen"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_magentacyan" then
				material = "default_floor_s_magentacyan"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_cyanblue" then
				material = "default_floor_s_cyanblue"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_redorange" then
				material = "default_floor_s_redorange"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_greenblack" then
				material = "default_floor_s_greenblack"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_blackviolet" then
				material = "default_floor_s_blackviolet"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_yellowred" then
				material = "default_floor_s_yellowred"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_whitered" then
				material = "default_floor_s_whitered"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_greenviolet" then
				material = "default_floor_s_greenviolet"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:floor_s_violetyellow" then
				material = "default_floor_s_violetyellow"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_yellow" then
				material = "default_stonewall_yellow"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_white" then
				material = "default_stonewall_white"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_violet" then
				material = "default_stonewall_violet"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_red" then
				material = "default_stonewall_red"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_pink" then
				material = "default_stonewall_pink"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_orange" then
				material = "default_stonewall_orange"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_magenta" then
				material = "default_stonewall_magenta"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_green" then
				material = "default_stonewall_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_dark_green" then
				material = "default_stonewall_dark_green"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_cyan" then
				material = "default_stonewall_cyan"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_brown" then
				material = "default_stonewall_brown"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_blue" then
				material = "default_stonewall_blue"
				make_ok = "1"
		end 
		
		if ingotstack:get_name()=="default:stonewall_black" then
				material = "default_stonewall_black"
				make_ok = "1"
		end 

		if ingotstack:get_name()=="columnia:rusty_block" then
				material = "columnia_rusty_block"
				make_ok = "1"
		end
		
		if ingotstack:get_name()=="default:reedblock" then
				material = "default_reedblock"
				make_ok = "1"
		end
		
		if ingotstack:get_name()=="default:cactus_block" then
				material = "default_cactus_block"
				make_ok = "1"
		end
		
		if ingotstack:get_name()=="default:cactus_brick" then
				material = "default_cactus_brick"
				make_ok = "1"
		end
		
		
----------------------------------------------------------------------------
--wool

		if ingotstack:get_name()=="wool:white" then
				material = "wool_white"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:black" then
				material = "wool_black"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:blue" then
				material = "wool_blue"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:brown" then
				material = "wool_brown"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:cyan" then
				material = "wool_cyan"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:dark_green" then
				material = "wool_dark_green"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:dark_grey" then
				material = "wool_dark_grey"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:green" then
				material = "wool_green"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:grey" then
				material = "wool_grey"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:magenta" then
				material = "wool_magenta"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:orange" then
				material = "wool_orange"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:pink" then
				material = "wool_pink"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:red" then
				material = "wool_red"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:violet" then
				material = "wool_violet"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:yellow" then
				material = "wool_yellow"
				make_ok = "1"
		end
----------------------------------------------------------------------
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













