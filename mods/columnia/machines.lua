local material = {}
local shape = {}
local make_ok = {}
local anzahl = {}


minetest.register_node("columnia:machine", {
	description = "Columnia WorkStation",
	tiles = {
		"columnia_machine_top.png",
		"columnia_machine_bottom.png",
		"columnia_machine_side2.png",
		"columnia_machine_side1.png",
		"columnia_machine_back.png",
		"columnia_machine_front.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2, cracky=3, dig_immediate=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.1875, -0.5, 0.5, -0.0625, 0.5},
			{-0.125, 0.0625, -0.125, 0.125, 0.5, 0.125},
			{-0.25, 0, -0.25, 0.25, 0.125, 0.25},
			{-0.4375, -0.5, -0.4375, -0.3125, -0.1875, -0.3125},
			{-0.4375, -0.5, 0.3125, -0.3125, -0.1875, 0.4375},
			{0.3125, -0.5, -0.4375, 0.4375, -0.1875, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, -0.1875, 0.4375},
			{-0.1875, 0.125, -0.1875, 0.1875, 0.1875, 0.1875},
			{-0.1875, -0.0625, -0.3125, -0.125, 0, 0.3125},
			{0.125, -0.0625, -0.3125, 0.1875, 0, 0.3125},
			{-0.4375, -0.0625, -0.4375, -0.375, 0, -0.0625},
			{-0.375, -0.0625, -0.4375, -0.1875, 0, -0.375}, 
			{0.28125, -0.0625, 0.3125, 0.46875, 0.0625, 0.4375}, 
			{0.34375, -0.0625, -0.0625, 0.40625, 0, 0.4375},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5}
	},

	after_place_node = function(pos, placer)
	local meta = minetest.env:get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Columnia Workstation is empty (owned by " .. (placer:get_player_name() or "") .. ")");
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
	meta:set_string("formspec", "invsize[10,10;]"..
		"background[-0.20,-0.25;10.40,11;columnia_background.png]"..
		"listcolors[#001100;#006600;#ffffff;#006600;#ffffff]"..
		"list[current_name;ingot;7,5;1,1;]"..
		"list[current_name;res;8,5;1,1;]"..
		"label[7,4.5;Input:]"..
		"label[8,4.5;Output:]"..

		"label[1,0;Basic's]"..
		"image_button[1,0.5;1,1;columnia_mach1.png;column_bottom; ]"..
		"image_button[2,0.5;1,1;columnia_mach2.png;column_mid; ]"..
		"image_button[3,0.5;1,1;columnia_mach3.png;column_top; ]"..
		"image_button[4,0.5;1,1;columnia_mach4.png;column_crosslink; ]"..
		
		"label[1,1.5;Links]"..
		"image_button[1,2;1,1;columnia_mach5.png;column_link; ]"..
		"image_button[2,2;1,1;columnia_mach7.png;column_linkcross; ]"..
		"image_button[3,2;1,1;columnia_mach10.png;column_linkangle; ]"..
		"image_button[4,2;1,1;columnia_mach14.png;column_linktee; ]"..
		
		"label[1,3;Links with Downs]"..
		"image_button[1,3.5;1,1;columnia_mach6.png;column_linkdown; ]"..
		"image_button[2,3.5;1,1;columnia_mach8.png;column_linkcrossdown; ]"..
		"image_button[3,3.5;1,1;columnia_mach13.png;column_linkangle_down; ]"..
		"image_button[4,3.5;1,1;columnia_mach15.png;column_linktee_down; ]"..
		"image_button[5,3.5;1,1;columnia_mach9.png;column_linkvertical; ]"..
		
		"label[1,4.5;Stair Substructures]"..
		"image_button[1,5;1,1;columnia_mach12.png;column_stairsubpillar; ]"..
		--"image_button[2,5;1,1;columnia_mach12.png;column_stairsubpillar; ]"..

		"list[current_player;main;1,6.25;8,4;]")
	meta:set_string("infotext", "Columnia WorkStation")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.env:get_meta(pos)
	local inv = meta:get_inventory()

-----------------------------
if fields["column_bottom"] 
or fields["column_mid"]
or fields["column_top"]
or fields["column_crosslink"]
or fields["column_link"]
or fields["column_linkdown"]
or fields["column_linkcross"]
or fields["column_linkcrossdown"]
or fields["column_linkvertical"]
or fields["column_linkangle"]
or fields["column_linkangle_down"]
or fields["column_linktee"]
or fields["column_linktee_down"]
--or fields["column_stairsub"]
or fields["column_stairsubpillar"]
then

--Crown Mould-----------------------------------------
	if fields["column_bottom"] then
		make_ok = "0"
		anzahl = "1"
		shape = "columnia:column_bottom_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_mid"] then
		make_ok = "0"
		anzahl = "1"
		shape = "columnia:column_mid_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_top"] then
		make_ok = "0"
		anzahl = "1"
		shape = "columnia:column_top_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_crosslink"] then
		make_ok = "0"
		anzahl = "1"
		shape = "columnia:column_crosslink_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_link"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_link_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
		if fields["column_linkdown"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linkdown_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_linkcross"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linkcross_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_linkcrossdown"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linkcrossdown_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_linkvertical"] then
		make_ok = "0"
		anzahl = "4"
		shape = "columnia:column_linkvertical_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_linkangle"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linkangle_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	if fields["column_linkangle_down"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linkangle_down_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	if fields["column_linktee"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linktee_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	if fields["column_linktee_down"] then
		make_ok = "0"
		anzahl = "2"
		shape = "columnia:column_linktee_down_"
		if inv:is_empty("ingot") then
			return
		end
	end
	--[[
		if fields["column_stairsub"] then
		make_ok = "0"
		anzahl = "1"
		shape = "columnia:column_stairsub_"
		if inv:is_empty("ingot") then
			return
		end
	end
	--]]

	if fields["column_stairsubpillar"] then
		make_ok = "0"
		anzahl = "1"
		shape = "columnia:column_stairsubpillar_"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	
	
	
	
	
	local ingotstack = inv:get_stack("ingot", 1)
    local resstack = inv:get_stack("res", 1)
----------------------------------------------------------------------
--Register Items
----------------------------------------------------------------------
		if ingotstack:get_name()=="default:sandstone" then
				material = "default_sandstone"
				make_ok = "1"
		end
		
		if ingotstack:get_name()=="default:sandstonebrick" then
				material = "default_sandstonebrick"
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

		if ingotstack:get_name()=="default:desert_cobble" then
				material = "default_desert_cobble"
				make_ok = "1"
		end

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

		if ingotstack:get_name()=="default:mese" then
				material = "default_mese"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:mossycobble" then
				material = "default_mossycobble"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:obsidian" then
				material = "default_obsidian"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:obsidian_glass" then
				material = "default_obsidian_glass"
				make_ok = "1"
		end

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
		
		if ingotstack:get_name()=="columnia:rusty_block" then
				material = "rusty_block"
				make_ok = "1"
		end

		--[[ if ingotstack:get_name()=="default:water_source" then
				material = "default_water"
				make_ok = "1"
		end --]]

		--[[ if ingotstack:get_name()=="farming:straw" then
				material = "farming_straw"
				make_ok = "1"
		end --]]

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
		output = 'columnia:machine',
		recipe = {
			{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
			{'group:wood', 'default:stone', 'group:wood'},
			{'default:stone', "", 'default:stone'},		
		},
})













