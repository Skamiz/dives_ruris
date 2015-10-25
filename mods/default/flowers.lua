
minetest.register_node("default:flowers_dandelion_white", {
	description = "White Dandelion",
	drawtype = "plantlike",
	tiles = { "flowers_dandelion_white.png" },
	inventory_image = "flowers_dandelion_white.png",
	wield_image = "flowers_dandelion_white.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_white=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.2, 0.5 },
	},
})

minetest.register_node("default:flowers_dandelion_yellow", {
	description = "Yellow Dandelion",
	drawtype = "plantlike",
	tiles = { "flowers_dandelion_yellow.png" },
	inventory_image = "flowers_dandelion_yellow.png",
	wield_image = "flowers_dandelion_yellow.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_yellow=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})

minetest.register_node("default:flowers_geranium", {
	description = "Blue Geranium",
	drawtype = "plantlike",
	tiles = { "flowers_geranium.png" },
	inventory_image = "flowers_geranium.png",
	wield_image = "flowers_geranium.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_blue=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})

minetest.register_node("default:flowers_rose", {
	description = "Rose",
	drawtype = "plantlike",
	tiles = { "flowers_rose.png" },
	inventory_image = "flowers_rose.png",
	wield_image = "flowers_rose.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_red=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.3, 0.15 },
	},
})

minetest.register_node("default:flowers_tulip", {
	description = "Tulip",
	drawtype = "plantlike",
	tiles = { "flowers_tulip.png" },
	inventory_image = "flowers_tulip.png",
	wield_image = "flowers_tulip.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_orange=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})

minetest.register_node("default:flowers_viola", {
	description = "Viola",
	drawtype = "plantlike",
	tiles = { "flowers_viola.png" },
	inventory_image = "flowers_viola.png",
	wield_image = "flowers_viola.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_violet=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.2, 0.5 },
	},
})
----
minetest.register_node("default:flowers_marg", {
	description = "Margrit",
	drawtype = "plantlike",
	tiles = { "flowers_marg.png" },
	inventory_image = "flowers_marg.png",
	wield_image = "flowers_marg.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_white=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.2, 0.5 },
	},
})

minetest.register_node("default:flowers_budder", {
	description = "Budderflower",
	drawtype = "plantlike",
	tiles = { "flowers_budder.png" },
	inventory_image = "flowers_budder.png",
	wield_image = "flowers_budder.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_yellow=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.2, 0.5 },
	},
})

minetest.register_node("default:flowers_silk", {
	description = "Blue Silk",
	drawtype = "plantlike",
	tiles = { "flowers_silk.png" },
	inventory_image = "flowers_silk.png",
	wield_image = "flowers_silk.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_blue=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.2, 0.5 },
	},
})

minetest.register_node("default:flowers_cosmo", {
	description = "Cosmo",
	drawtype = "plantlike",
	tiles = { "flowers_cosmo.png" },
	inventory_image = "flowers_cosmo.png",
	wield_image = "flowers_cosmo.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_red=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, -0.2, 0.5 },
	},
})

minetest.register_node("default:flowers_heliconia", {
	description = "Heliconia",
	drawtype = "plantlike",
	tiles = { "flowers_heliconia.png" },
	inventory_image = "flowers_heliconia.png",
	wield_image = "flowers_heliconia.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_orange=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})

minetest.register_node("default:flowers_lavendel", {
	description = "Lavendel",
	drawtype = "plantlike",
	tiles = { "flowers_lavendel.png" },
	inventory_image = "flowers_lavendel.png",
	wield_image = "flowers_lavendel.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,flower=1,flora=1,attached_node=1,color_violet=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})
---

minetest.register_abm({
	nodenames = {"group:flora"},
	neighbors = {"group:soil"},
	interval = 50,
	chance = 25,
	action = function(pos, node)

		local light = minetest.get_node_light(pos)

		if not light or light < 13 then
			return
		end

		local pos0 = {x=pos.x-4,y=pos.y-2,z=pos.z-4}
		local pos1 = {x=pos.x+4,y=pos.y+2,z=pos.z+4}

		if #minetest.find_nodes_in_area(pos0, pos1, "group:flora") > 5 then
			return
		end

		local seedling = minetest.find_nodes_in_area(pos0, pos1, {"group:soil"})

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
