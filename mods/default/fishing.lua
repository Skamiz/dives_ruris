-- Orginalcode and rodtexture from etherealmod by Tenplus1
-- Modified in 2015 by Glünggi 
-- Code modifies are under wtfpl licences

-- Raw Fish
minetest.register_craftitem("default:food_fish_raw", {
	description = "Raw Fish (1)",
	inventory_image = "default_food_fish_raw.png",
	on_use = minetest.item_eat(1),
})

-- Cooked Fish
minetest.register_craftitem("default:food_fish_cooked", {
	description = "Cooked Fish(2)",
	inventory_image = "default_food_fish_cooked.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_fish_cooked",
	recipe = "default:food_fish_raw",
	cooktime = 2,
})

-- Fish n Chips 
minetest.register_craftitem("default:food_fishnchips", {
	description = "Fish n Chips(5)",
	inventory_image = "default_food_fishnchips.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craft({
	output = "default:food_fishnchips",
	recipe = {
		{'default:food_fish_cooked','default:food_chips'},
	}
})

-- Worm
minetest.register_craftitem("default:worm", {
	description = "Worm (use a hoe on soil to find worms)",
	inventory_image = "default_worm.png",
})

-- Fishing Rod
minetest.register_craftitem("default:fishing_rod", {
	description = "Fishing Rod",
	inventory_image = "default_fishing_rod.png",
})

minetest.register_craft({
	output = "default:fishing_rod",
	recipe = {
			{"","","default:stick"},
			{"", "default:stick", "farming:string"},
			{"default:stick", "", "farming:string"},
		}
})

--[[ Sift through 2 Dirt Blocks to find Worm
minetest.register_craft({
	output = "default:worm",
	recipe = {
		{"group:soil","group:soil"},
	}
})
--]]
-- Fishing Rod (Baited)
minetest.register_craftitem("default:fishing_rod_baited", {
	description = "Baited Fishing Rod (spam LMB)",
	inventory_image = "default_fishing_rod_baited.png",
	wield_image = "default_fishing_rod_wield.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function (itemstack, user, pointed_thing)

		if pointed_thing.type ~= "node" then return end
		
		local node = minetest.get_node_or_nil(pointed_thing.under)
		if node then node = node.name else return end

		if (node == "default:water_source"
		or node == "default:river_water_source")
		and math.random(1, 100) < 5 then
			local inv = user:get_inventory()
			if inv:room_for_item("main", {name = "default:food_fish_raw"}) then
				inv:add_item("main", {name = "default:food_fish_raw"})
				return {name = "default:fishing_rod"}
			else
				minetest.chat_send_player(user:get_player_name(), "Inventory full, Fish Got Away!")
			end
		end
	end,
})

minetest.register_craft({
	type = "shapeless",
	output = "default:fishing_rod_baited",
	recipe = {"default:fishing_rod", "default:worm"},
})