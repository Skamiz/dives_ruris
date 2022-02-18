-- mods/default/nodes.lua

--[[ Index:
(forget the index use searchfunction ;) )
Stone
-----
(1. Material 2. Cobble variant 3. Brick variant [4. Modified forms])

default:stone
default:stone_block
default:cobble
default:stonebrick
default:mossycobble

default:desert_stone
default:desert_stone_block
default:desert_cobble
default:desert_stonebrick
default:desert_gravel

default:sandstone
default:sandstonebrick

default:obsidian
default:obsidianbrick

default:granite
default:granite_block
default:granite_brick

default:marble
default:marble_block
default:marble_brick

Soft / Non-Stone
----------------
(1. Material [2. Modified forms])

default:dirt
default:dirt_with_grass
default:dirt_med
default:dirt_med_with_grass
default:dirt_deep
default:dirt_deep_with_grass
default:dirt_jungle
default:dirt_jungle_with_grass

default:dirt_with_grass_footsteps
default:dirt_med_with_grass_footsteps
default:dirt_deep_with_grass_footsteps
default:dirt_jungle_with_grass_footsteps

default:dirt_with_snow

default:sand
default:seeground
default:desert_sand

default:gravel

default:clay

default:snow
default:snowblock

default:ice

Trees
-----
(1. Trunk 2. Fabricated trunk 3. Leaves 4. Sapling [5. Fruits])

default:tree
default:wood
default:leaves
default:sapling
default:apple

default:sapling_beech
default:leaves_beech

default:sapling_cypress
default:leaves_cypress

default:tree_palm
default:wood_palm
default:leaves_palm
default:sapling_palm
default:fruit_coconut

default:sapling_cocoa
default:leaves_cocoa
default:fruit_cocoa

default:sapling_banana
default:leaves_banana
default:fruit_banana

default:tree_orange
default:wood_orange
default:leaves_orange
default:sapling_orange
default:fruit_orange

default:tree_olive
default:wood_olive
default:leaves_olive
default:sapling_olive
default:fruit_olive

default:tree_birch
default:wood_birch
default:leaves_birch
default:sapling_birch

default:tree_poplar
default:wood_poplar
default:leaves_poplar
default:sapling_poplar

default:tree_rubber
default:wood_rubber
default:leaves_rubber
default:sapling_rubber

default:tree_ahorn
default:wood_ahorn
default:leaves_ahorn
default:sapling_ahorn

default:tree_oak
default:wood_oak
default:leaves_oak
default:sapling_oak

default:jungletree
default:junglewood
default:jungleleaves
default:junglesapling

default:pinetree
default:pinewood
default:pine_needles
default:pine_sapling

Ores
----
(1. In stone 2. Block)

default:stone_with_coal
default:coalblock

default:stone_with_iron
default:steelblock

default:stone_with_copper
default:copperblock
default:bronzeblock

default:stone_with_gold
default:goldblock

default:stone_with_mese
default:mese

default:stone_with_diamond
default:diamondblock

Plantlife (non-cubic)
---------------------
default:cactus
default:papyrus
default:dry_shrub
default:junglegrass
default:grass_1
default:grass_2
default:grass_3
default:grass_4
default:grass_5

Liquids
-------
(1. Source 2. Flowing)

default:water_source
default:water_flowing

default:lava_source
default:lava_flowing

Tools / "Advanced" crafting / Non-"natural"
-------------------------------------------
default:torch

default:chest
default:chest_locked

default:bookshelf

default:sign_wall
default:ladder
default:fence_wood

default:glass
default:obsidian_glass

default:rail

default:brick

Misc
----
default:cloud
default:nyancat
default:nyancat_rainbow

--]]

--
-- Stone
--

minetest.register_node("default:stone", {
	description = "Stone",
	tiles = {
		{name = "default_stone_1.png", align_style = "world"},
		{name = "default_stone_2.png", align_style = "world"},
		{name = "default_stone_3.png", align_style = "world"},
		{name = "default_stone_4.png", align_style = "world"},
		{name = "default_stone_5.png", align_style = "world"},
		{name = "default_stone_6.png", align_style = "world"},
	},
	paramtype2 = "facedir",
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'default:stone',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		return minetest.item_place(itemstack, placer, pointed_thing, math.random(24) - 1)
	end
})

minetest.register_node("default:stone_block", {
	description = "Stone Block",
	tiles = {"default_stone_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:cobble", {
	description = "Cobblestone",
	tiles = {"default_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonebrick", {
	description = "Stone Brick",
	tiles = {"default_stone_brick.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"default_mossycobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("default:desert_stone", {
	description = "Desert Stone",
	-- tiles = {"default_desert_stone.png"},
	tiles = {
		{name = "default_desert_stone_1.png", align_style = "world"},
		{name = "default_desert_stone_2.png", align_style = "world"},
		{name = "default_desert_stone_3.png", align_style = "world"},
		{name = "default_desert_stone_4.png", align_style = "world"},
		{name = "default_desert_stone_5.png", align_style = "world"},
		{name = "default_desert_stone_6.png", align_style = "world"},
	},
	paramtype2 = "facedir",
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'default:desert_stone',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_stone_block", {
	description = "Desert Stone Block",
	tiles = {"default_desert_stone_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_cobble", {
	description = "Desert Cobblestone",
	tiles = {"default_desert_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_stonebrick", {
	description = "Desert Stone Brick",
	tiles = {"default_desert_stone_brick.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_gravel", {
	description = "Desert Gravel",
	tiles = {"default_desert_gravel.png"},
	is_ground_content = true,
	groups = {crumbly=2, falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})



minetest.register_node("default:sandstone", {
	description = "Sandstone",
	tiles = {"default_sandstone.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:sandstonebrick", {
	description = "Sandstone Brick",
	tiles = {"default_sandstone_brick.png"},
	is_ground_content = true,
	groups = {cracky=2, swall=1},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("default:obsidian", {
	description = "Obsidian",
	tiles = {"default_obsidian.png"},
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=1,level=2},
})

minetest.register_node("default:obsidianbrick", {
	description = "Obsidian Brick",
	tiles = {"default_obsidian_brick.png"},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=1,level=2},
})


minetest.register_node("default:granite", {
	description = "Granite",
	tiles = {"default_granite.png"},
	is_ground_content = true,
	groups = {cracky=2, stone=1, level=2},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get flint with a chance
				items = {'fake_fire:flint'},
				rarity = 45,
			},
			{
				-- player will get granite
				-- this is because max_items is 1
				items = {'default:granite'},
			}
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_block", {
	description = "Granite Block",
	tiles = {"default_granite_block.png"},
	is_ground_content = true,
	groups = {cracky=2, level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_brick", {
	description = "Granite Brick",
	tiles = {"default_granite_brick.png"},
	groups = {cracky=2, stone=1, level=2, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:marble", {
	description = "Marble",
	tiles = {"default_marble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'default:marble',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:marble_block", {
	description = "Marble Block",
	tiles = {"default_marble_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:marble_brick", {
	description = "Marble Brick",
	tiles = {"default_marble_brick.png"},
	groups = {cracky=3, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

--
-- Soft / Non-Stone
--

minetest.register_node("default:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("default:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("default:dirt_med", {
	description = "Mediteran Dirt",
	tiles = {"default_dirt_med.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("default:dirt_med_with_grass", {
	description = "Mediteran Dirt with Grass",
	tiles = {"default_grass_med.png", "default_dirt_med.png", "default_dirt_med.png^default_grass_med_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	drop = 'default:dirt_med',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("default:dirt_deep", {
	description = "Deep Forest Dirt",
	tiles = {"default_dirt_deep.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("default:dirt_deep_with_grass", {
	description = "Deep Forest Dirt with Grass",
	tiles = {"default_grass_deep.png", "default_dirt_deep.png", "default_dirt_deep.png^default_grass_deep_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	drop = 'default:dirt_deep',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("default:dirt_jungle", {
	description = "Jungle Dirt",
	tiles = {"default_dirt_jungle.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("default:dirt_jungle_with_grass", {
	description = "Jungle Dirt with Grass",
	tiles = {"default_grass_jungle.png", "default_dirt_jungle.png", "default_dirt_jungle.png^default_grass_jungle_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1},
	drop = 'default:dirt_jungle',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})


minetest.register_node("default:dirt_with_grass_footsteps", {
	description = "Dirt with Grass and Footsteps",
	tiles = {"default_grass_footsteps.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1,not_in_creative_inventory=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("default:dirt_med_with_grass_footsteps", {
	description = "Mediteran Dirt with Grass and Footsteps",
	tiles = {"default_grass_med_footsteps.png", "default_dirt_med.png", "default_dirt_med.png^default_grass_med_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1,not_in_creative_inventory=1},
	drop = 'default:dirt_med',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("default:dirt_deep_with_grass_footsteps", {
	description = "Deep Forest Dirt with Grass and Footsteps",
	tiles = {"default_grass_deep_footsteps.png", "default_dirt_deep.png", "default_dirt_deep.png^default_grass_deep_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1,not_in_creative_inventory=1},
	drop = 'default:dirt_deep',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("default:dirt_jungle_with_grass_footsteps", {
	description = "Jungle Dirt with Grass and Footsteps",
	tiles = {"default_grass_jungle_footsteps.png", "default_dirt_jungle.png", "default_dirt_jungle.png^default_grass_jungle_side.png"},
	is_ground_content = true,
	groups = {crumbly=3,soil=1,not_in_creative_inventory=1},
	drop = 'default:dirt_jungle',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})


minetest.register_node("default:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles = {"default_snow.png", "default_dirt.png", "default_dirt.png^default_snow_side.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
	}),
})


minetest.register_node("default:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("default:seeground", {
	description = "Seeground",
	tiles = {"default_seeground.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("default:desert_sand", {
	description = "Desert Sand",
	tiles = {"default_desert_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1},
	sounds = default.node_sound_sand_defaults(),
})


minetest.register_node("default:gravel", {
	description = "Gravel",
	tiles = {"default_gravel.png"},
	is_ground_content = true,
	groups = {crumbly=2, falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})


minetest.register_node("default:clay", {
	description = "Clay",
	tiles = {"default_clay.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	drop = 'default:clay',
	sounds = default.node_sound_dirt_defaults(),
})


minetest.register_node("default:snow", {
	description = "Snow",
	tiles = {"default_snow.png"},
	inventory_image = "default_snowball.png",
	wield_image = "default_snowball.png",
	is_ground_content = true,
	paramtype = "light",
	buildable_to = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5,  0.5, -0.5+2/16, 0.5},
		},
	},
	groups = {crumbly=3,falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	}),

	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name="default:dirt_with_snow"})
		end
	end,
})

minetest.register_node("default:snowblock", {
	description = "Snow Block",
	tiles = {"default_snow.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	}),
})


minetest.register_node("default:ice", {
	description = "Ice",
	tiles = {"default_ice.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
})

--
-- Trees
--

minetest.register_node("default:tree", {
	description = "Tree",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood", {
	description = "Wooden Planks",
	tiles = {"default_wood.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves", {
	description = "Appletree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling", {
	description = "Appletree Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:apple", param2=1})
		end
	end,
})

--beechvariation
minetest.register_node("default:sapling_beech", {
	description = "Beech Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_beech.png"},
	inventory_image = "default_sapling_beech.png",
	wield_image = "default_sapling_beech.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:leaves_beech", {
	description = "Beech Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_beech.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_beech'},
				rarity = 30,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_beech'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

--cypress
minetest.register_node("default:sapling_cypress", {
	description = "Cypress Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_cypress.png"},
	inventory_image = "default_sapling_cypress.png",
	wield_image = "default_sapling_cypress.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:leaves_cypress", {
	description = "Cypress needles",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_cypress.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_cypress'},
				rarity = 10,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_cypress'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

--palmtree
minetest.register_node("default:tree_palm", {
	description = "Palm Tree",
	tiles = {"default_tree_palm_top.png", "default_tree_palm_top.png", "default_tree_palm.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_palm", {
	description = "Palmwood Planks",
	tiles = {"default_wood_palm.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_palm", {
	description = "Palm Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_palm.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_palm'},
				rarity = 12,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_palm'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_palm", {
	description = "Palm Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_palm.png"},
	inventory_image = "default_sapling_palm.png",
	wield_image = "default_sapling_palm.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:fruit_coconut", {
	description = "Coconut",
	drawtype = "plantlike",
	tiles = {"default_fruit_coconut.png"},
	inventory_image = "default_fruit_coconut.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:fruit_coconut", param2=1})
		end
	end,
})

--cocoatree
minetest.register_node("default:sapling_cocoa", {
	description = "Cocoa Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_cocoa.png"},
	inventory_image = "default_sapling_cocoa.png",
	wield_image = "default_sapling_cocoa.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:leaves_cocoa", {
	description = "Cocoa Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_cocoa.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_cocoa'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_cocoa'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:fruit_cocoa", {
	description = "Cocoa",
	drawtype = "plantlike",
	tiles = {"default_fruit_cocoa.png"},
	inventory_image = "default_fruit_cocoa.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:fruit_cocoa", param2=1})
		end
	end,
})

--bananatree
minetest.register_node("default:sapling_banana", {
	description = "Banana Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_banana.png"},
	inventory_image = "default_sapling_banana.png",
	wield_image = "default_sapling_banana.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:leaves_banana", {
	description = "Banana Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_banana.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_banana'},
				rarity = 9,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_banana'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:fruit_banana", {
	description = "Banana",
	drawtype = "torchlike",
	tiles = {"default_fruit_banana.png"},
	inventory_image = "default_fruit_banana.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:fruit_banana", param2=1})
		end
	end,
})

--Orangetree
minetest.register_node("default:tree_orange", {
	description = "Orangetree",
	tiles = {"default_tree_orange_top.png", "default_tree_orange_top.png", "default_tree_orange.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_orange", {
	description = "Orangewood Planks",
	tiles = {"default_wood_orange.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_orange", {
	description = "Orangetree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_orange.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_orange'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_orange'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_orange", {
	description = "Orangetree Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_orange.png"},
	inventory_image = "default_sapling_orange.png",
	wield_image = "default_sapling_orange.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:fruit_orange", {
	description = "Orange",
	drawtype = "plantlike",
	tiles = {"default_fruit_orange.png"},
	inventory_image = "default_fruit_orange.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:fruit_orange", param2=1})
		end
	end,
})

--Olivetree
minetest.register_node("default:tree_olive", {
	description = "Olivetree",
	tiles = {"default_tree_olive_top.png", "default_tree_olive_top.png", "default_tree_olive.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_olive", {
	description = "Olivewood Planks",
	tiles = {"default_wood_olive.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_olive", {
	description = "Olivetree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_olive.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_olive'},
				rarity = 18,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_olive'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_olive", {
	description = "Olivetree Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_olive.png"},
	inventory_image = "default_sapling_olive.png",
	wield_image = "default_sapling_olive.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:fruit_olive", {
	description = "Olive",
	drawtype = "plantlike",
	tiles = {"default_fruit_olive.png"},
	inventory_image = "default_fruit_olive.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:fruit_olive", param2=1})
		end
	end,
})

--birchtree
minetest.register_node("default:tree_birch", {
	description = "Birch Tree",
	tiles = {"default_tree_birch_top.png", "default_tree_birch_top.png", "default_tree_birch.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_birch", {
	description = "Birchwood Planks",
	tiles = {"default_wood_birch.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_birch", {
	description = "Birch Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_birch.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_birch'},
				rarity = 25,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_birch'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_birch", {
	description = "Birch Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_birch.png"},
	inventory_image = "default_sapling_birch.png",
	wield_image = "default_sapling_birch.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

--Poplartree
minetest.register_node("default:tree_poplar", {
	description = "Poplar Tree",
	tiles = {"default_tree_poplar_top.png", "default_tree_poplar_top.png", "default_tree_poplar.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_poplar", {
	description = "Poplarwood Planks",
	tiles = {"default_wood_poplar.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_poplar", {
	description = "Poplar Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_poplar.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_poplar'},
				rarity = 28,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_poplar'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_poplar", {
	description = "Poplar Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_poplar.png"},
	inventory_image = "default_sapling_poplar.png",
	wield_image = "default_sapling_poplar.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- Rubbertree
minetest.register_node("default:tree_rubber", {
	description = "Rubber Tree",
	tiles = {"default_tree_rubber_top.png", "default_tree_rubber_top.png", "default_tree_rubber.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_rubber", {
	description = "Rubbertreewood Planks",
	tiles = {"default_wood_rubber.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_rubber", {
	description = "Rubber Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_rubber.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_rubber'},
				rarity = 28,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_rubber'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_rubber", {
	description = "Rubbertree Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_rubber.png"},
	inventory_image = "default_sapling_rubber.png",
	wield_image = "default_sapling_rubber.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- Ahorntree
minetest.register_node("default:tree_ahorn", {
	description = "Ahorn Tree",
	tiles = {"default_tree_ahorn_top.png", "default_tree_ahorn_top.png", "default_tree_ahorn.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_ahorn", {
	description = "Ahornwood Planks",
	tiles = {"default_wood_ahorn.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_ahorn", {
	description = "Ahorn Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_ahorn.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_ahorn'},
				rarity = 33,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_ahorn'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_ahorn", {
	description = "Ahorntree Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_ahorn.png"},
	inventory_image = "default_sapling_ahorn.png",
	wield_image = "default_sapling_ahorn.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- Oaktree
minetest.register_node("default:tree_oak", {
	description = "Oak Tree",
	tiles = {"default_tree_oak_top.png", "default_tree_oak_top.png", "default_tree_oak.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_oak", {
	description = "Oakwood Planks",
	tiles = {"default_wood_oak.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_oak", {
	description = "Oak Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_oak.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_oak'},
				rarity = 33,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_oak'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_oak", {
	description = "Oaktree Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_oak.png"},
	inventory_image = "default_sapling_oak.png",
	wield_image = "default_sapling_oak.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

--Jungletree
minetest.register_node("default:tree_jungle", {
	description = "Jungle Tree",
	tiles = {"default_tree_jungle_top.png", "default_tree_jungle_top.png", "default_tree_jungle.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_jungle", {
	description = "Junglewood Planks",
	tiles = {"default_wood_jungle.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_jungle", {
	description = "Jungle Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_jungle.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_jungle'},
				rarity = 35,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_jungle'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_jungle", {
	description = "Jungle Sapling (xxl)",
	drawtype = "plantlike",
	tiles = {"default_sapling_jungle.png"},
	inventory_image = "default_sapling_jungle.png",
	wield_image = "default_sapling_jungle.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- jungle2
minetest.register_node("default:leaves_jungle2", {
	description = "Green Jungle Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_jungle2.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_jungle2'},
				rarity = 35,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_jungle2'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_jungle2", {
	description = "Green Jungle Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_jungle2.png"},
	inventory_image = "default_sapling_jungle2.png",
	wield_image = "default_sapling_jungle2.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

--Jungle3
minetest.register_node("default:leaves_jungle3", {
	description = "Bright Green Jungle Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_jungle3.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling_jungle3'},
				rarity = 35,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves_jungle3'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_jungle3", {
	description = "Bright Green Jungle Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_jungle3.png"},
	inventory_image = "default_sapling_jungle3.png",
	wield_image = "default_sapling_jungle3.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})



minetest.register_node("default:tree_pine", {
	description = "Pine Tree",
	tiles = {"default_tree_pine_top.png", "default_tree_pine_top.png", "default_tree_pine.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:wood_pine", {
	description = "Pinewood Planks",
	tiles = {"default_wood_pine.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:leaves_pine",{
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"default_leaves_pine.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {"default:sapling_pine"},
				rarity = 33,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"default:leaves_pine"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:sapling_pine", {
	description = "Pine Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling_pine.png"},
	inventory_image = "default_sapling_pine.png",
	wield_image = "default_sapling_pine.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:acacia_tree", {
	description = "Acacia Tree",
	tiles = {"default_acacia_tree_top.png", "default_acacia_tree_top.png",
		"default_acacia_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("default:acacia_wood", {
	description = "Acacia Wood Planks",
	tiles = {"default_acacia_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:acacia_leaves", {
	description = "Acacia Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_acacia_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:acacia_sapling"}, rarity = 20},
			{items = {"default:acacia_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("default:acacia_sapling", {
	description = "Acacia Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_acacia_sapling.png"},
	inventory_image = "default_acacia_sapling.png",
	wield_image = "default_acacia_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
})

--
-- Ores
--

minetest.register_node("default:stone_with_salt", {
	description = "Stonesalt",
	tiles = {"default_stone.png^default_mineral_salt.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'default:food_salt 3',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_stone_with_salt", {
	description = "Stonesalt",
	tiles = {"default_desert_stone.png^default_mineral_salt.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'default:food_salt 3',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_stone.png^default_mineral_coal.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:coalblock", {
	description = "Coal Block",
	tiles = {"default_coal_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("default:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_stone.png^default_mineral_iron.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_desert_stone.png^default_mineral_iron.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:steelblock", {
	description = "Steel Block",
	tiles = {"default_steel_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("default:stone_with_copper", {
	description = "Copper Ore",
	tiles = {"default_stone.png^default_mineral_copper.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:copper_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:copperblock", {
	description = "Copper Block",
	tiles = {"default_copper_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stone_with_tin", {
	description = "Tin Ore",
	tiles = {"default_stone.png^default_mineral_tin.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'default:tin_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:tinblock", {
	description = "Tin Block",
	tiles = {"default_tin_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:bronzeblock", {
	description = "Bronze Block",
	tiles = {"default_bronze_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("default:stone_with_mese", {
	description = "Mese Ore",
	tiles = {"default_stone.png^default_mineral_mese.png"},
	is_ground_content = true,
	groups = {cracky=1},
	light_source = 3,
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:mese", {
	description = "Mese Block",
	tiles = {"default_mese_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})




minetest.register_node("default:stone_with_gold", {
	description = "Gold Ore",
	tiles = {"default_stone.png^default_mineral_gold.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:goldblock", {
	description = "Gold Block",
	tiles = {"default_gold_block.png"},
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("default:stone_with_diamond", {
	description = "Diamond Ore",
	tiles = {"default_stone.png^default_mineral_diamond.png"},
	is_ground_content = true,
	groups = {cracky=1},
	light_source = 3,
	drop = "default:diamond",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:diamondblock", {
	description = "Diamond Block",
	tiles = {"default_diamond_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=1,level=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_with_ruby", {
	description = "Ruby Ore",
	tiles = {"default_granite.png^default_mineral_ruby.png"},
	is_ground_content = true,
	groups = {cracky=2,level=2},
	light_source = 3,
	drop = "default:ruby",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:rubyblock", {
	description = "Ruby Block",
	tiles = {"default_ruby_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=2,level=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_with_topaz", {
	description = "Topaz Ore",
	tiles = {"default_granite.png^default_mineral_topaz.png"},
	is_ground_content = true,
	groups = {cracky=2,level=2},
	light_source = 3,
	drop = "default:topaz",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:topazblock", {
	description = "Topaz Block",
	tiles = {"default_topaz_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=2,level=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_with_emerald", {
	description = "Emerald Ore",
	tiles = {"default_granite.png^default_mineral_emerald.png"},
	is_ground_content = true,
	groups = {cracky=2,level=2},
	light_source = 3,
	drop = "default:emerald",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:emeraldblock", {
	description = "Emerald Block",
	tiles = {"default_emerald_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=2,level=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_with_sapphire", {
	description = "Sapphire Ore",
	tiles = {"default_granite.png^default_mineral_sapphire.png"},
	is_ground_content = true,
	groups = {cracky=2,level=2},
	light_source = 3,
	drop = "default:sapphire",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:sapphireblock", {
	description = "Sapphire Block",
	tiles = {"default_sapphire_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=2,level=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:granite_with_amethyst", {
	description = "Amethyst Ore",
	tiles = {"default_granite.png^default_mineral_amethyst.png"},
	is_ground_content = true,
	groups = {cracky=2,level=2},
	light_source = 3,
	drop = "default:amethyst",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:amethystblock", {
	description = "Amethyst Block",
	tiles = {"default_amethyst_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=2,level=3},
	sounds = default.node_sound_stone_defaults(),
})

--
-- Plantlife (non-cubic)
--

minetest.register_node("default:cactus", {
	description = "Cactus",
	tiles = {"default_cactus_top.png", "default_cactus_top.png", "default_cactus_side.png",},
	paramtype = "light",
    paramtype2 = "facedir",
	is_ground_content = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.35,-0.5,-0.4,0.35,0.5,0.4},
			{-0.4,-0.5,-0.35, 0.4,0.5,0.35},
			{-0.25,-0.5,-0.45,0.25,0.5,0.45},
			{-0.45,-0.5,-0.25, 0.45,0.5,0.25},
			{-0.15,-0.5,-0.5,0.15,0.5,0.5},
			{-0.5,-0.5,-0.15, 0.5,0.5,0.15},
		},
	},
	groups = {snappy=1,choppy=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_node("default:cactus_block", {
	description = "Cactus Block",
	tiles = {"default_cactus_block.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {snappy=1,choppy=3,flammable=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:cactus_brick", {
	description = "Cactus Brick",
	tiles = {"default_cactus_brick.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {snappy=1,choppy=3,flammable=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"default_papyrus.png"},
	inventory_image = "default_papyrus.png",
	wield_image = "default_papyrus.png",
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

minetest.register_node("default:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_dry_shrub.png"},
	inventory_image = "default_dry_shrub.png",
	wield_image = "default_dry_shrub.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("default:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"default_junglegrass.png"},
	inventory_image = "default_junglegrass.png",
	wield_image = "default_junglegrass.png",
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	is_ground_content = true,
	groups = {snappy=3,flammable=2,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("default:junglegrass2", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"default_junglegrass2.png"},
	inventory_image = "default_junglegrass2.png",
	wield_image = "default_junglegrass2.png",
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	is_ground_content = true,
	groups = {snappy=3,flammable=2,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("default:grass_1", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_grass_1.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "default_grass_3.png",
	wield_image = "default_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},

	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

for i=2,5 do
	minetest.register_node("default:grass_"..i, {
		description = "Grass",
		drawtype = "plantlike",
		waving = 1,
		tiles = {"default_grass_"..i..".png"},
		inventory_image = "default_grass_"..i..".png",
		wield_image = "default_grass_"..i..".png",
		paramtype = "light",
		walkable = false,
		buildable_to = true,
		is_ground_content = true,
		drop = "default:grass_1",
		groups = {snappy=3,flammable=3,flora=1,attached_node=1,not_in_creative_inventory=1},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
		},
	})
end

--
-- Liquids
--

minetest.register_node("default:water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png^[opacity:160",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_water_source_animated.png^[opacity:160",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("default:water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "flowingliquid",
	tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png^[opacity:160",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing_animated.png^[opacity:160",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:water_flowing",
	liquid_alternative_source = "default:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1, not_in_creative_inventory=1},
})

minetest.register_node("default:river_water_source", {
	description = "River Water Source",
	inventory_image = minetest.inventorycube("default_river_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "default_river_water_source_animated.png^[opacity:160",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "default_river_water_source_animated.png^[opacity:160",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:river_water_flowing",
	liquid_alternative_source = "default:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 120, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1},
})

minetest.register_node("default:river_water_flowing", {
	description = "Flowing River Water",
	inventory_image = minetest.inventorycube("default_river_water.png"),
	drawtype = "flowingliquid",
	tiles = {"default_river_water.png"},
	special_tiles = {
		{
			name = "default_river_water_flowing_animated.png^[opacity:160",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_river_water_flowing_animated.png^[opacity:160",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:river_water_flowing",
	liquid_alternative_source = "default:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 120, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1},
})


minetest.register_node("default:lava_source", {
	description = "Lava Source",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "default:lava_flowing",
	liquid_alternative_source = "default:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1},
})

minetest.register_node("default:lava_flowing", {
	description = "Flowing Lava",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:lava_flowing",
	liquid_alternative_source = "default:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1, not_in_creative_inventory=1},
})

--
-- Tools / "Advanced" crafting / Non-"natural"
--

minetest.register_node("default:torch", {
	description = "Torch",
	drawtype = "torchlike",
	tiles = {
		{
			name = "default_torch_on_floor_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			},
		},
		{
			name="default_torch_on_ceiling_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			},
		},
		{
			name="default_torch_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			},
		},
	},
	inventory_image = "default_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	light_source = default.LIGHT_MAX - 1,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1,attached_node=1},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
})

-- Lamps
minetest.register_node("default:lamp_ceiling", {
    description = "Ceiling Lamp",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"default_lamp.png"},
	sunlight_propagates = true,
	light_source = 14,
	walkable = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, 0.375, -0.25, 0.25, 0.5, 0.25},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("default:lamp_wall", {
    description = "Wall Lamp",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"default_lamp.png"},
	sunlight_propagates = true,
	light_source = 14,
	walkable = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.1875, 0.375, 0.1875, 0.1875, 0.5},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("default:lamp_column", {
    description = "Column Lamp (Stairs)",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"default_lamp_cl.png"},
	sunlight_propagates = true,
	light_source = 14,
	walkable = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0.0625, -0.0625, -0.375, 0.4375},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("default:latern", {
    description = "Bronze Latern (stand)",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"default_latern_top.png",
		"default_latern_top.png", -- bottom
		"default_latern_side.png",
		"default_latern_side.png",
		"default_latern_side.png",
		"default_latern_side.png",
			},
	sunlight_propagates = true,
	light_source = 14,
	walkable = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
	        {-0.25, -0.1875, -0.25, 0.25, 0.1875, 0.25},
			{-0.1875, -0.25, -0.1875, 0.1875, 0.25, 0.1875},
			{-0.125, -0.3125, -0.125, 0.125, 0.3125, 0.125},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.375, 0.0625},
			{-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("default:laternrusty", {
    description = "Rusty Latern (stand)",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"default_laternrusty_top.png",
		"default_laternrusty_top.png", -- bottom
		"default_laternrusty_side.png",
		"default_laternrusty_side.png",
		"default_laternrusty_side.png",
		"default_laternrusty_side.png",
			},
	sunlight_propagates = true,
	light_source = 14,
	walkable = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
	        {-0.25, -0.1875, -0.25, 0.25, 0.1875, 0.25},
			{-0.1875, -0.25, -0.1875, 0.1875, 0.25, 0.1875},
			{-0.125, -0.3125, -0.125, 0.125, 0.3125, 0.125},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.375, 0.0625},
			{-0.125, -0.5, -0.125, 0.125, -0.4375, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

--chest

local chest_formspec =
	"size[8,9]"..
	default.gui_bg..
	default.chestgui_bg_img..
	default.gui_slots..
	"list[current_name;main;0,0.3;8,4;]"..
	"list[current_player;main;0,4.85;8,1;]"..
	"listring[]" ..
	"list[current_player;main;0,6.08;8,3;8]"..
	default.get_hotbar_bg(0,4.85)

local function get_locked_chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," ..pos.z
	local formspec =
		"size[8,9]"..
		default.gui_bg..
		default.chestgui_bg_img..
		default.gui_slots..
		"list[nodemeta:".. spos .. ";main;0,0.3;8,4;]"..
		"list[current_player;main;0,4.85;8,1;]"..
		"listring[]" ..
		"list[current_player;main;0,6.08;8,3;8]"..
		default.get_hotbar_bg(0,4.85)
 return formspec
end

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_node("default:chest", {
	description = "Chest",
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2, chests=1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", chest_formspec)
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})



minetest.register_node("default:chest_locked", {
	description = "Locked Chest",
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_lock.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2, lchests=1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Locked Chest (owned by "..
				meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Locked Chest")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_locked_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to locked chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from locked chest at "..minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_locked_chest_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"default:chest_locked",
				get_locked_chest_formspec(pos)
			)
		end
	end,
})



local bookshelf_formspec =
	"size[8,7;]"..
	default.gui_bg..
	default.gui_bg_img..
	default.gui_slots..
	"list[context;books;0,0.3;8,2;]"..
	"list[current_player;main;0,2.85;8,1;]"..
	"list[current_player;main;0,4.08;8,3;8]"..
	default.get_hotbar_bg(0,2.85)

minetest.register_node("default:bookshelf", {
	description = "Bookshelf",
	tiles = {"default_wood.png", "default_wood.png", "default_bookshelf.png"},
	is_ground_content = false,
	groups = {choppy=3,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", bookshelf_formspec)
		local inv = meta:get_inventory()
		inv:set_size("books", 8*2)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("books")
	end,

	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local to_stack = inv:get_stack(listname, index)
		if listname == "books" then
			if minetest.get_item_group(stack:get_name(), "book") ~= 0
					and to_stack:is_empty() then
				return 1
			else
				return 0
			end
		end
	end,

	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local stack = inv:get_stack(from_list, from_index)
		local to_stack = inv:get_stack(to_list, to_index)
		if to_list == "books" then
			if stack:get_name() == "default:book" and to_stack:is_empty() then
				return 1
			else
				return 0
			end
		end
	end,

	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
			   " moves stuff in bookshelf at "..minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
			   " moves stuff to bookshelf at "..minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
			   " takes stuff from bookshelf at "..minetest.pos_to_string(pos))
	end,
})



minetest.register_node("default:sign_wall", {
	description = "Sign",
	drawtype = "nodebox",
	tiles = {"default_sign.png"},
	inventory_image = "default_sign_wall.png",
	wield_image = "default_sign_wall.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	node_box = {
		type = "wallmounted",
		wall_top    = {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, 0.3125},
		wall_bottom = {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125},
		wall_side   = {-0.5, -0.3125, -0.4375, -0.4375, 0.3125, 0.4375},
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),

	on_construct = function(pos)
		--local n = minetest.get_node(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "field[text;;${text}]")
		meta:set_string("infotext", "\"\"")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
		if minetest.is_protected(pos, sender:get_player_name()) then
			minetest.record_protection_violation(pos, sender:get_player_name())
			return
		end
		local meta = minetest.get_meta(pos)
		if not fields.text then return end
		minetest.log("action", (sender:get_player_name() or "").." wrote \""..fields.text..
				"\" to sign at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"'..fields.text..'"')
	end,
})

minetest.register_node("default:ladder", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"default_ladder.png"},
	inventory_image = "default_ladder.png",
	wield_image = "default_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:chains", {
	description = "Chains",
	drawtype = "signlike",
	tiles = {"default_chains.png"},
	inventory_image = "default_chains.png",
	wield_image = "default_chains.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {cracky=3,oddly_breakable_by_hand=3},
	legacy_wallmounted = true,
	sounds = default.node_sound_wood_defaults(),
})

-- colored wood

minetest.register_node("default:colwood_black", {
	description = "Black Wooden Planks",
	tiles = {"default_colwood_black.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_blue", {
	description = "Blue Wooden Planks",
	tiles = {"default_colwood_blue.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_brown", {
	description = "Brown Wooden Planks",
	tiles = {"default_colwood_brown.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_cyan", {
	description = "Cyan Wooden Planks",
	tiles = {"default_colwood_cyan.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_dark_green", {
	description = "Darkgreen Wooden Planks",
	tiles = {"default_colwood_dark_green.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_dark_grey", {
	description = "Darkgrey Wooden Planks",
	tiles = {"default_colwood_dark_grey.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_green", {
	description = "Green Wooden Planks",
	tiles = {"default_colwood_green.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_grey", {
	description = "Grey Wooden Planks",
	tiles = {"default_colwood_grey.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_magenta", {
	description = "Magenta Wooden Planks",
	tiles = {"default_colwood_magenta.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_orange", {
	description = "Orange Wooden Planks",
	tiles = {"default_colwood_orange.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_pink", {
	description = "Pink Wooden Planks",
	tiles = {"default_colwood_pink.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_red", {
	description = "Red Wooden Planks",
	tiles = {"default_colwood_red.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_violet", {
	description = "Violet Wooden Planks",
	tiles = {"default_colwood_violet.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_white", {
	description = "White Wooden Planks",
	tiles = {"default_colwood_white.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:colwood_yellow", {
	description = "Yellow Wooden Planks",
	tiles = {"default_colwood_yellow.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})


local fence_texture = "default_fence_overlay.png^default_wood.png^default_fence_overlay.png^[makealpha:255,126,126"
minetest.register_node("default:fence_wood", {
	description = "Uncolored Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_wood.png"},
	inventory_image = fence_texture,
	wield_image = fence_texture,
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})


-- colored Fences

minetest.register_node("default:fence_wood_black", {
	description = "Black Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_black.png"},
	inventory_image = "default_fence_black.png",
	wield_image = "default_fence_black.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_blue", {
	description = "Blue Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_blue.png"},
	inventory_image = "default_fence_blue.png",
	wield_image = "default_fence_blue.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_brown", {
	description = "Brown Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_brown.png"},
	inventory_image = "default_fence_brown.png",
	wield_image = "default_fence_brown.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_cyan", {
	description = "Cyan Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_cyan.png"},
	inventory_image = "default_fence_cyan.png",
	wield_image = "default_fence_cyan.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_dark_green", {
	description = "Darkgreen Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_dark_green.png"},
	inventory_image = "default_fence_dark_green.png",
	wield_image = "default_fence_dark_green.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_dark_grey", {
	description = "Darkgrey Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_dark_grey.png"},
	inventory_image = "default_fence_dark_grey.png",
	wield_image = "default_fence_dark_grey.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_green", {
	description = "Green Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_green.png"},
	inventory_image = "default_fence_green.png",
	wield_image = "default_fence_green.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_grey", {
	description = "Grey Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_grey.png"},
	inventory_image = "default_fence_grey.png",
	wield_image = "default_fence_grey.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_magenta", {
	description = "Magenta Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_magenta.png"},
	inventory_image = "default_fence_magenta.png",
	wield_image = "default_fence_magenta.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_orange", {
	description = "Orange Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_orange.png"},
	inventory_image = "default_fence_orange.png",
	wield_image = "default_fence_orange.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_pink", {
	description = "Pink Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_pink.png"},
	inventory_image = "default_fence_pink.png",
	wield_image = "default_fence_pink.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_red", {
	description = "Red Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_red.png"},
	inventory_image = "default_fence_red.png",
	wield_image = "default_fence_red.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_violet", {
	description = "Violet Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_violet.png"},
	inventory_image = "default_fence_violet.png",
	wield_image = "default_fence_violet.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_white", {
	description = "White Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_white.png"},
	inventory_image = "default_fence_white.png",
	wield_image = "default_fence_white.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:fence_wood_yellow", {
	description = "Yellow Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_colwood_yellow.png"},
	inventory_image = "default_fence_yellow.png",
	wield_image = "default_fence_yellow.png",
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2, woodfence=1},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("default:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	inventory_image = minetest.inventorycube("default_glass.png"),
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = "blend",
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("default:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike",
	tiles = {"default_obsidian_glass.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky=3,oddly_breakable_by_hand=3},
})



minetest.register_node("default:rail", {
	description = "Rail",
	drawtype = "raillike",
	tiles = {"default_rail.png", "default_rail_curved.png", "default_rail_t_junction.png", "default_rail_crossing.png"},
	inventory_image = "default_rail.png",
	wield_image = "default_rail.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
                -- but how to specify the dimensions for curved and sideways rails?
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {bendy=2,dig_immediate=2,attached_node=1},
})



minetest.register_node("default:brick", {
	description = "Brick Block",
	tiles = {"default_brick.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

-- Colors are beautiful

minetest.register_node("default:brick_black", {
	description = "Black Brick Block",
	tiles = {"default_brick_black.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_blue", {
	description = "Blue Brick Block",
	tiles = {"default_brick_blue.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_brown", {
	description = "Brown Brick Block",
	tiles = {"default_brick_brown.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_cyan", {
	description = "Cyan Brick Block",
	tiles = {"default_brick_cyan.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_dark_green", {
	description = "Darkgreen Brick Block",
	tiles = {"default_brick_dark_green.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_dark_grey", {
	description = "Darkgrey Brick Block",
	tiles = {"default_brick_dark_grey.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_green", {
	description = "Green Brick Block",
	tiles = {"default_brick_green.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_grey", {
	description = "Grey Brick Block",
	tiles = {"default_brick_grey.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_magenta", {
	description = "Magenta Brick Block",
	tiles = {"default_brick_magenta.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_orange", {
	description = "Orange Brick Block",
	tiles = {"default_brick_orange.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_pink", {
	description = "Pink Brick Block",
	tiles = {"default_brick_pink.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_red", {
	description = "Red Brick Block",
	tiles = {"default_brick_red.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_violet", {
	description = "Violet Brick Block",
	tiles = {"default_brick_violet.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_white", {
	description = "White Brick Block",
	tiles = {"default_brick_white.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:brick_yellow", {
	description = "Yellow Brick Block",
	tiles = {"default_brick_yellow.png"},
	is_ground_content = false,
	groups = {cracky=3, claybricks=1},
	sounds = default.node_sound_stone_defaults(),
})
--
-- FLooRS
--

minetest.register_node("default:floor_granite", {
	description = "Granite Floor",
	tiles = {"default_floor_granite.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_stone", {
	description = "Stone Floor",
	tiles = {"default_floor_stone.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_desertstone", {
	description = "Desertstone Floor",
	tiles = {"default_floor_desertstone.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_sanddesertstone", {
	description = "Sand-Desertstone Floor",
	tiles = {"default_floor_sanddesertstone.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_stonegranite", {
	description = "Stone-Granite Floor",
	tiles = {"default_floor_stonegranite.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_sandstone", {
	description = "Sandstone Floor",
	tiles = {"default_floor_sandstone.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_marble", {
	description = "Marble Floor",
	tiles = {"default_floor_marble.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_yellow", {
	description = "Yellow Stonefloor",
	tiles = {"default_floor_s_yellow.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_white", {
	description = "White Stonefloor",
	tiles = {"default_floor_s_white.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_violet", {
	description = "Violet Stonefloor",
	tiles = {"default_floor_s_violet.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_red", {
	description = "Red Stonefloor",
	tiles = {"default_floor_s_red.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_pink", {
	description = "Pink Stonefloor",
	tiles = {"default_floor_s_pink.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_orange", {
	description = "Orange Stonefloor",
	tiles = {"default_floor_s_orange.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_magenta", {
	description = "Magenta Stonefloor",
	tiles = {"default_floor_s_magenta.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_green", {
	description = "Green Stonefloor",
	tiles = {"default_floor_s_green.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_dark_green", {
	description = "Darkgreen Stonefloor",
	tiles = {"default_floor_s_dark_green.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_cyan", {
	description = "Cyan Stonefloor",
	tiles = {"default_floor_s_cyan.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_brown", {
	description = "Brown Stonefloor",
	tiles = {"default_floor_s_brown.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_blue", {
	description = "Blue Stonefloor",
	tiles = {"default_floor_s_blue.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_black", {
	description = "Black Stonefloor",
	tiles = {"default_floor_s_black.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_blackwhite", {
	description = "Black n' White Stonefloor",
	tiles = {"default_floor_s_blackwhite.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_whiteblue", {
	description = "White n' Blue Stonefloor",
	tiles = {"default_floor_s_whiteblue.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_blueyellow", {
	description = "Blue n Yellow Stonefloor",
	tiles = {"default_floor_s_blueyellow.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("default:floor_s_yellowgreen", {
	description = "Yellow n Green Stonefloor",
	tiles = {"default_floor_s_yellowgreen.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_greengreen", {
	description = "Green n Green Stonefloor",
	tiles = {"default_floor_s_greengreen.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_magentacyan", {
	description = "Magenta n' Cyan Stonefloor",
	tiles = {"default_floor_s_magentacyan.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_cyanblue", {
	description = "Cyan n' Blue Stonefloor",
	tiles = {"default_floor_s_cyanblue.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_redorange", {
	description = "Red n' Orange Stonefloor",
	tiles = {"default_floor_s_redorange.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_greenblack", {
	description = "Green n' Black Stonefloor",
	tiles = {"default_floor_s_greenblack.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_blackviolet", {
	description = "Black n' Violet Stonefloor",
	tiles = {"default_floor_s_blackviolet.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_yellowred", {
	description = "Yellow n' Red Stonefloor",
	tiles = {"default_floor_s_yellowred.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_whitered", {
	description = "White n' Red Stonefloor",
	tiles = {"default_floor_s_whitered.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_greenviolet", {
	description = "Green n' Violet Stonefloor",
	tiles = {"default_floor_s_greenviolet.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:floor_s_violetyellow", {
	description = "Violet n' Yellow Stonefloor",
	tiles = {"default_floor_s_violetyellow.png"},
	groups = {cracky=2, stone=1, sfloors=1},
	sounds = default.node_sound_stone_defaults(),
})

--wooden floor

minetest.register_node("default:floor_w_wood", {
	description = "Wooden Floor",
	tiles = {"default_floor_w_wood.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:floor_w_oakolive", {
	description = "Oak & Olivetree Wood Floor",
	tiles = {"default_floor_w_oakolive.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:floor_w_junglebirch", {
	description = "Jungle & Birch Wood Floor",
	tiles = {"default_floor_w_junglebirch.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

--
-- Colored Stonewall
--
minetest.register_node("default:stonewall_black", {
	description = "Black Stonewall",
	tiles = {"default_stonewall_black.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_blue", {
	description = "Blue Stonewall",
	tiles = {"default_stonewall_blue.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_brown", {
	description = "Brown Stonewall",
	tiles = {"default_stonewall_brown.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_cyan", {
	description = "Cyan Stonewall",
	tiles = {"default_stonewall_cyan.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_dark_green", {
	description = "Darkgreen Stonewall",
	tiles = {"default_stonewall_dark_green.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_green", {
	description = "Green Stonewall",
	tiles = {"default_stonewall_green.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_magenta", {
	description = "Magenta Stonewall",
	tiles = {"default_stonewall_magenta.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_orange", {
	description = "Orange Stonewall",
	tiles = {"default_stonewall_orange.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_pink", {
	description = "Pink Stonewall",
	tiles = {"default_stonewall_pink.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_red", {
	description = "Red Stonewall",
	tiles = {"default_stonewall_red.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_violet", {
	description = "Violet Stonewall",
	tiles = {"default_stonewall_violet.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_white", {
	description = "White Stonewall",
	tiles = {"default_stonewall_white.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_yellow", {
	description = "Yellow Stonewall",
	tiles = {"default_stonewall_yellow.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})
--[[
minetest.register_node("default:stonewall_blackwhite", {
	description = "Black n' White Stonewall",
	tiles = {"default_stonewall_blackwhite.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_blueyellow", {
	description = "Blue n' Yellow Stonewall",
	tiles = {"default_stonewall_blueyellow.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_cyanblue", {
	description = "Cyan n' Blue Stonewall",
	tiles = {"default_stonewall_cyanblue.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_greenblack", {
	description = "Green n' Black Stonewall",
	tiles = {"default_stonewall_greenblack.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_greengreen", {
	description = "Green n' Green Stonewall",
	tiles = {"default_stonewall_greengreen.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_greenviolet", {
	description = "Green n' Violet Stonewall",
	tiles = {"default_stonewall_greenviolet.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_magentacyan", {
	description = "Magenta n' Cyan Stonewall",
	tiles = {"default_stonewall_magentacyan.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_redorange", {
	description = "Red n' Orange Stonewall",
	tiles = {"default_stonewall_redorange.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_violetyellow", {
	description = "Violet n' Yellow Stonewall",
	tiles = {"default_stonewall_violetyellow.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_whiteblue", {
	description = "White n' Blue Stonewall",
	tiles = {"default_stonewall_whiteblue.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_whitered", {
	description = "White n' Red Stonewall",
	tiles = {"default_stonewall_whitered.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_yellowgreen", {
	description = "Yellow n' Green Stonewall",
	tiles = {"default_stonewall_yellowgreen.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stonewall_yellowred", {
	description = "Yellow n' Red Stonewall",
	tiles = {"default_stonewall_yellowred.png"},
	groups = {cracky=2, stone=1, swall=1},
	sounds = default.node_sound_stone_defaults(),
})
--]]
--
-- Misc
--

minetest.register_node("default:block_randomizer", {
	description = "Block Randomizer",
	tiles = {"default_stone.png"},
	groups = {cracky=1},
	drops = "default:stone",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:vase_randomizer", {
	description = "Vase Randomizer",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"default_clay.png"},
	groups = {cracky=1},
	sunlight_propagates = true,
	drops = "default:clay",
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25}
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0.1875, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.125, 0.375, -0.125, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0.125, 0.3125, 0.125},
			{-0.1875, -0.375, -0.1875, 0.1875, 0.1875, 0.1875},
			{-0.25, -0.25, -0.25, 0.25, 0.0625, 0.25},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("default:cloud", {
	description = "Cloud",
	tiles = {"default_cloud.png"},
	sounds = default.node_sound_defaults(),
	groups = {not_in_creative_inventory=1},
})

minetest.register_node("default:nyancat", {
	description = "Nyan Cat",
	tiles = {"default_nc_side.png", "default_nc_side.png", "default_nc_side.png",
		"default_nc_side.png", "default_nc_back.png", "default_nc_front.png"},
	paramtype2 = "facedir",
	groups = {cracky=2},
	is_ground_content = false,
	legacy_facedir_simple = true,
	sounds = default.node_sound_defaults(),
})

minetest.register_node("default:nyancat_rainbow", {
	description = "Nyan Cat Rainbow",
	tiles = {
		"default_nc_rb.png^[transformR90", "default_nc_rb.png^[transformR90",
		"default_nc_rb.png", "default_nc_rb.png"
	},
	paramtype2 = "facedir",
	groups = {cracky=2},
	light_source = 3,
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
})
