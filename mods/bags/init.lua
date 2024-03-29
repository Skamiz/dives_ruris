-- Modified for Dives Ruris in 2015 by Glünggi
-- chance the recipes

-- Modified by Skamiz to addcompatibility with the sfinv mod

--[[

Bags for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-particles
License: GPLv3

]]--


-- get_formspec
local get_formspec = function(player,page)
	if page=="bags" then
		return "size[8,7.5]"
			..default.gui_slots
			.."list[current_player;main;0,3.5;8,4;]"
			.."button[0,0;2,0.5;main;Back]"
			.."button[0,2;2,0.5;bag1;Bag 1]"
			.."button[2,2;2,0.5;bag2;Bag 2]"
			.."button[4,2;2,0.5;bag3;Bag 3]"
			.."button[6,2;2,0.5;bag4;Bag 4]"
			.."list[detached:"..player:get_player_name().."_bags;bag1;0.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag2;2.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag3;4.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag4;6.5,1;1,1;]"
	end
	for i=1,4 do
		if page=="bag"..i then
			local image = player:get_inventory():get_stack("bag"..i, 1):get_definition().inventory_image
			return "size[8,8.5]"
				..default.gui_slots
				.."list[current_player;main;0,4.5;8,4;]"
				.."button[0,0;2,0.5;main;Main]"
				.."button[2,0;2,0.5;bags;Bags]"
				.."image[7,0;1,1;"..image.."]"
				.."list[current_player;bag"..i.."contents;0,1;8,3;]"
		end
	end
end

if minetest.get_modpath("sfinv") then
	sfinv.register_page("bags:bags", {
	    title = "Bags",
	    get = function(self, player, context)
			local formspec = ""
			.. "button[0,2.5;2.25,0.75;bag1;Bag 1]"
			.. "button[2.5,2.5;2.25,0.75;bag2;Bag 2]"
			.. "button[5,2.5;2.25,0.75;bag3;Bag 3]"
			.. "button[7.5,2.5;2.25,0.75;bag4;Bag 4]"
			.. "list[detached:"..player:get_player_name().."_bags;bag1;0.625,1;1,1;]"
			.. "list[detached:"..player:get_player_name().."_bags;bag2;3.125,1;1,1;]"
			.. "list[detached:"..player:get_player_name().."_bags;bag3;5.625,1;1,1;]"
			.. "list[detached:"..player:get_player_name().."_bags;bag4;8.125,1;1,1;]"

	        return sfinv.make_formspec(player, context, formspec, true, nil, true)
	    end
	})
end

-- register_on_player_receive_fields
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if minetest.get_modpath("sfinv") then
		if fields["back"] then
			sfinv.set_page(player, "bags:bags")
			return
		end
		for i=1,4 do
			local page = "bag"..i
			if fields[page] then
				if player:get_inventory():get_stack(page, 1):get_definition().groups.bagslots then
					local image = player:get_inventory():get_stack(page, 1):get_definition().inventory_image

					local context = sfinv.get_or_create_context(player)
					local form = "image[8.75,0;1,1;"..image.."]"
					.. "button[0,0;2.25,0.75;back;Back]"
					.. "list[current_player;bag"..i.."contents;0,1.25;8,3;]"
					-- .. "list[current_player;main;0,5.2;8,4;]"
					.. "listring[]"
					-- .. "list[current_player;main;0,6.35;8,3;8]"

					local formspec = sfinv.make_formspec(player, context, form, true, nil, true)
					if cfs then
						formspec = cfs.style_formspec(formspec, player, nil)
					end
					player:set_inventory_formspec(formspec)
				end
				return
			end
		end
		return
	end
	if fields.bags then
		inventory_plus.set_inventory_formspec(player, get_formspec(player,"bags"))
		return
	end
	for i=1,4 do
		local page = "bag"..i
		if fields[page] then
			if player:get_inventory():get_stack(page, 1):get_definition().groups.bagslots==nil then
				page = "bags"
			end
			inventory_plus.set_inventory_formspec(player, get_formspec(player,page))
			return
		end
	end
end)

-- register_on_joinplayer
minetest.register_on_joinplayer(function(player)
	if minetest.get_current_modname("inventory_plus") then
		inventory_plus.register_button(player,"bags","Bags")
	end
	local player_inv = player:get_inventory()
	local bags_inv = minetest.create_detached_inventory(player:get_player_name().."_bags",{
		on_put = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, stack)
			player:get_inventory():set_size(listname.."contents", stack:get_definition().groups.bagslots)
		end,
		on_take = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, nil)
		end,
		allow_put = function(inv, listname, index, stack, player)
			if stack:get_definition().groups.bagslots then
				return 1
			else
				return 0
			end
		end,
		allow_take = function(inv, listname, index, stack, player)
			if player:get_inventory():is_empty(listname.."contents")==true then
				return stack:get_count()
			else
				return 0
			end
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	for i=1,4 do
		local bag = "bag"..i
		player_inv:set_size(bag, 1)
		bags_inv:set_size(bag, 1)
		bags_inv:set_stack(bag,1,player_inv:get_stack(bag,1))
	end
end)

-- register bag tools
minetest.register_tool("bags:small", {
	description = "Small Bag",
	inventory_image = "bags_small.png",
	groups = {bagslots=8},
})
minetest.register_tool("bags:medium", {
	description = "Medium Bag",
	inventory_image = "bags_medium.png",
	groups = {bagslots=16},
})
minetest.register_tool("bags:large", {
	description = "Large Bag",
	inventory_image = "bags_large.png",
	groups = {bagslots=24},
})

-- register bag crafts
minetest.register_craft({
	output = "bags:small",
	recipe = {
        {"", "farming:string", ""},
        {"wool:white", "wool:white", "wool:white"},
        {"wool:white", "wool:white", "wool:white"},
    },
})
minetest.register_craft({
	output = "bags:medium",
	recipe = {
        {"vines:vine_rope", "", "vines:vine_rope"},
        {"mobs:leather", "bags:small", "mobs:leather"},
        {"mobs:leather", "mobs:leather", "mobs:leather"},
    },
})
minetest.register_craft({
	output = "bags:large",
	recipe = {
        {"default:stick", "farming:string", "default:stick"},
        {"default:hardened_leather", "bags:small", "default:hardened_leather"},
        {"default:hardened_leather", "bags:medium", "default:hardened_leather"},
    },
})

-- log that we started
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded from "..minetest.get_modpath(minetest.get_current_modname()))
