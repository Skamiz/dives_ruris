-- some special plants for Dives Ruris.

-- sugarcane
minetest.register_node("default:sugarcane", {
	description = "Sugarcane",
	drawtype = "plantlike",
	tiles = {"default_sugarcane.png"},
	inventory_image = "default_sugarcane.png",
	wield_image = "default_sugarcane.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_abm({
	label = "Grow sugarcane",
	nodenames = {"default:sugarcane"},
	neighbors = {"default:dirt_jungle_with_grass", "default:dirt_deep_with_grass", "default:dirt_med_with_grass", "default:dirt_with_grass"},
	interval = 50,
	chance = 20,
	action = function(pos, node)
		pos.y = pos.y-1
		local name = minetest.get_node(pos).name
		if name == "default:dirt_with_grass" or name == "default:dirt_deep_with_grass" or name == "default:dirt_jungle_with_grass" or name == "default:dirt_med_with_grass" then
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "default:sugarcane" and height < 3 do
				height = height+1
				pos.y = pos.y+1
			end
			if height < 3 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="default:sugarcane"})
				end
			end
		end
	end,
})

function default.make_sugarcane(pos, size)
	for y=0,size-1 do
		local p = {x=pos.x, y=pos.y+y, z=pos.z}
		local nn = minetest.get_node(p).name
		if minetest.registered_nodes[nn] and
			minetest.registered_nodes[nn].buildable_to then
			minetest.set_node(p, {name="default:sugarcane"})
		else
			return
		end
	end
end

-- Recipes sugarcane


minetest.register_craftitem("default:food_sugar", {
	description = "Sugar (1)",
	inventory_image = "default_sugar.png",
                     on_use = minetest.item_eat(1),
})

minetest.register_craft({
	output = 'default:food_sugar',
	recipe = {
		{'default:sugarcane', 'default:sugarcane', 'default:sugarcane'},
	}
})

-- Reed
minetest.register_node("default:reed", {
	description = "Reed",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"default_reed.png"},
	inventory_image = "default_reed.png",
	wield_image = "default_reed.png",
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	is_ground_content = true,
	groups = {snappy=3,flammable=2,attached_node=1,reed=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("default:reed2", {
			description = "Long Reed",
			drawtype = "plantlike",
			waving = 1,
			visual_scale = 2.0,
			tiles = {"default_reed2.png"},
			inventory_image = "default_reed2.png",
	        wield_image = "default_reed2.png",
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			groups = {snappy=3,flammable=2,attached_node=1,reed=1},
			sounds = default.node_sound_leaves_defaults(),
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
})

minetest.register_abm({
	label = "Spread reeds",
	nodenames = {"group:reed"},
	neighbors = {"default:gravel"},
	interval = 50,
	chance = 25,
	action = function(pos, node)

		local light = minetest.get_node_light(pos)

		if not light or light < 13 then
			return
		end

		local pos0 = {x=pos.x-4,y=pos.y-2,z=pos.z-4}
		local pos1 = {x=pos.x+4,y=pos.y+2,z=pos.z+4}

		if #minetest.find_nodes_in_area(pos0, pos1, "group:reed") > 5 then
			return
		end
		if minetest.find_node_near(pos, 6, {"group:water"}) == nil then
				return
		end

		local seedling = minetest.find_nodes_in_area(pos0, pos1, {"default:gravel"})

		if #seedling > 0 then
			seedling = seedling[math.random(#seedling)]
			seedling.y = seedling.y + 1
			light = minetest.get_node_light(seedling)
			if not light or light < 13 then
				return
			end
			if minetest.get_node(seedling).name == "air" then
				minetest.set_node(seedling, {name=node.name})
			end
		end
	end,
})

minetest.register_node("default:reedblock", {
	description = "Reed Block",
	tiles = {"default_reedblock.png"},
	is_ground_content = false,
	groups = {snappy=3, flammable=4},
	sounds = default.node_sound_leaves_defaults(),
})
-- Recipes reed
minetest.register_craft({
	output = "default:reedblock 4",
	recipe = {
		{"group:reed", "group:reed", "group:reed"},
		{"group:reed", "group:reed", "group:reed"},
		{"group:reed", "group:reed", "group:reed"},
	}
})

---
---Sealife (original by TenPlus1)
---

-- Seaweed
minetest.register_node("default:seaweed", {
	description = "Seaweed",
	drawtype = "plantlike",
	tiles = {"default_seaweed.png"},
	inventory_image = "default_seaweed.png",
	wield_image = "default_seaweed.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	selection_box = {type = "fixed", fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3,sealife=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:dark_green 3",
	recipe = {"default:seaweed",},
})

-- Blue Coral
minetest.register_node("default:coral2", {
	description = "Blue Coral",
	drawtype = "plantlike",
	tiles = {"default_coral2.png"},
	inventory_image = "default_coral2.png",
	paramtype = "light",
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3,sealife=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:cyan 3",
	recipe = {"default:coral2",},
})

-- Orange Coral
minetest.register_node("default:coral3", {
	description = "Orange Coral",
	drawtype = "plantlike",
	tiles = {"default_coral3.png"},
	inventory_image = "default_coral3.png",
	paramtype = "light",
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3,sealife=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:orange 3",
	recipe = {"default:coral3",},
})

-- Pink Coral
minetest.register_node("default:coral4", {
	description = "Pink Coral",
	drawtype = "plantlike",
	tiles = {"default_coral4.png"},
	inventory_image = "default_coral4.png",
	paramtype = "light",
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3,sealife=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:pink 3",
	recipe = {"default:coral4",},
})

-- Green Coral
minetest.register_node("default:coral5", {
	description = "Green Coral",
	drawtype = "plantlike",
	tiles = {"default_coral5.png"},
	inventory_image = "default_coral5.png",
	paramtype = "light",
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3,sealife=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:green 3",
	recipe = {"default:coral5",},
})

-- poison erwin

minetest.register_node("default:poison_erwin", {
	description = "Poison Erwin",
	drawtype = "plantlike",
    visual_scale = 1.2,
	tiles = {"default_poison_erwin.png"},
	inventory_image = "default_poison_erwin.png",
	wield_image = "default_poison_erwin.png",
	paramtype = "light",
	walkable = false,
    damage_per_second = 3,
    drop = "default:poison_erwin",
	groups = {snappy=3, flora=1},
	sounds = default.node_sound_leaves_defaults(),
})
