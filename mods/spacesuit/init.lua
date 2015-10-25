-- spacesuit 0.2.0 by paramat
-- for latest stable Minetest and back to 0.4.8
-- depends default
-- licenses: code WTFPL, textures CC BY-SA

-- Stuff

spacesuit = {}

-- Items

minetest.register_craftitem("spacesuit:spacesuit", {
	description = "Divingsuit ",
	inventory_image = "spacesuit_spacesuit.png",
})

minetest.register_craftitem("spacesuit:helmet", {
	description = "Mesetinted Helmet",
	inventory_image = "spacesuit_helmet.png",
	groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("spacesuit:lifesupport", {
	description = "Life Support",
	inventory_image = "spacesuit_lifesupport.png",
	groups = {not_in_creative_inventory=1},
})

-- Crafting

minetest.register_craft({
	output = "spacesuit:helmet",
	recipe = {
		{"default:mese"},
		{"default:glass"},
		{"default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "spacesuit:lifesupport",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", ""                   , "default:steel_ingot"},
		{"default:steel_ingot", "default:mese"       , "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "spacesuit:spacesuit",
	recipe = {
		{"", "spacesuit:helmet"     , ""},
		{""          , "spacesuit:lifesupport", ""          },
		{"", ""                     , ""},
	}
})

-- Globalstep function

minetest.register_globalstep(function(dtime)
	for _, player in ipairs(minetest.get_connected_players()) do
		if math.random() < 0.1 then
			if player:get_inventory():contains_item("main", "spacesuit:spacesuit")
			and player:get_breath() < 10 then
				player:set_breath(10)
			end
		end
	end
end)