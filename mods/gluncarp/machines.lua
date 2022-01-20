local material = {}
local shape = {}
local make_ok = {}
local anzahl = {}


minetest.register_node("gluncarp:machine", {
	description = "Carpet WorkStation",
	tiles = {
		"gluncarp_machine_top.png",
		"gluncarp_machine_bottom.png",
		"gluncarp_machine_side2.png",
		"gluncarp_machine_side1.png",
		"gluncarp_machine_back.png",
		"gluncarp_machine_front.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2, cracky=3, dig_immediate=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, -0.375, 0.125}, 
			{-0.5, 0.375, 0.0625, 0.5, 0.4375, 0.125}, 
			{0.4375, -0.375, -0.125, 0.5, 0.375, -0.0625}, 
			{-0.5, -0.375, -0.125, -0.4375, 0.375, -0.0625}, 
			{0.21875, -0.375, -0.03125, 0.28125, 0.5, 0.03125}, 
			{-0.28125, -0.375, -0.03125, -0.21875, 0.5, 0.03125}, 
			{-0.03125, -0.4375, -0.03125, 0.03125, 0.5, 0.03125}, 
			{-0.3125, -0.3125, -0.03125, 0.3125, 0.3125, 0.03125}, 
			{-0.5, -0.5, -0.25, 0.5, -0.4375, 0.25}, 
			{0.4375, -0.4375, 0.0625, 0.5, 0.4375, 0.125}, 
			{-0.5, -0.4375, 0.0625, -0.4375, 0.4375, 0.125}, 
			{-0.5, 0.375, -0.125, 0.5, 0.4375, -0.0625}, 
			{-0.5, 0.375, -0.125, -0.375, 0.4375, 0.125}, 
			{0.375, 0.375, -0.125, 0.5, 0.4375, 0.125}, 
			{0.21875, 0.375, -0.0625, 0.28125, 0.4375, 0.0625}, 
			{-0.03125, 0.375, -0.0625, 0.03125, 0.4375, 0.0625}, 
			{-0.28125, 0.375, -0.0625, -0.21875, 0.4375, 0.0625},
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.25, 0.5, 0.5, 0.25} 
		}
	},

	after_place_node = function(pos, placer)
	local meta = minetest.get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Carpet Workstation is empty (owned by " .. (placer:get_player_name() or "") .. ")");
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
	meta:set_string("formspec", "invsize[10,6;]"..
		"background[-0.15,-0.25;10.40,7;gluncarp_background.png]"..
		"listcolors[#001100;#006600;#ffffff;#006600;#ffffff]"..
		"list[current_name;ingot;3,0.5;1,1;]"..
		"list[current_name;res;6,0.5;1,1;]"..
		"label[3,0;Wool:]"..
		"label[6,0;Output:]"..

		"label[4.5,0;push it]"..
		"image_button[4.5,0.5;1,1;gluncarp_mach1.png;carpet; ]"..

		"list[current_player;main;1,2;8,4;]")
	meta:set_string("infotext", "Carpet WorkStation")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

-----------------------------
if fields["carpet"] 
then

--Crown Mould-----------------------------------------
	if fields["carpet"] then
		make_ok = "0"
		anzahl = "4"
		shape = "gluncarp:"
		if inv:is_empty("ingot") then
			return
		end
	end
	
	
	
	local ingotstack = inv:get_stack("ingot", 1)
    local resstack = inv:get_stack("res", 1)
----------------------------------------------------------------------
--Register Items
----------------------------------------------------------------------
		if ingotstack:get_name()=="wool:white" then
				material = "white"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:black" then
				material = "black"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:blue" then
				material = "blue"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:brown" then
				material = "brown"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:cyan" then
				material = "cyan"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:dark_green" then
				material = "dark_green"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:dark_grey" then
				material = "dark_grey"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:green" then
				material = "green"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:grey" then
				material = "grey"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:magenta" then
				material = "magenta"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:orange" then
				material = "orange"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:pink" then
				material = "pink"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:red" then
				material = "red"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:violet" then
				material = "violet"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:yellow" then
				material = "yellow"
				make_ok = "1"
		end
		--moe wool
		
		if ingotstack:get_name()=="gluncarp:wool_blackgold" then
				material = "blackgold"
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
		output = 'gluncarp:machine',
		recipe = {
			{'group:wood', 'group:stick', 'group:wood'},
			{'farming:string', 'farming:string', 'farming:string'},
			{'group:wood', "group:stick", 'group:wood'},		
		},
})













