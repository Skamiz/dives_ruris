-- its a fork (2015 by Glünggi) of the mymillwork mod by DonBatman wtfpl license

columnia = {}

-- Bracket 
minetest.register_node("columnia:bracket",	{ 
            description = 'Bracket (Column)',
			tiles = {"columnia_rusty.png",},
			drawtype = "nodebox",
			sunlight_propagates = true,
			paramtype = 'light',
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
			        {-0.25, 0, 0.4375, 0.25, 0.5, 0.5},
			        {-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			        {-0.0625, -0.375, -0.0625, 0.0625, 0.1875, 0.0625},
			        {-0.0625, 0.1875, -0.0625, 0.0625, 0.3125, 0.4375},
			        {-0.1875, 0.0625, 0.3125, 0.1875, 0.4375, 0.4375},
			        {-0.125, -0.375, -0.125, 0.125, -0.25, 0.125},
		        },
			},
			groups = {choppy=2, oddly_breakable_by_hand=2,},
			sounds = default.node_sound_stone_defaults(),
})
		
minetest.register_craft({
		output = 'columnia:bracket 4',
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", ""},
			{"", "default:steel_ingot", ""},
			{"", "default:steel_ingot", ""},
		},
		replacements = {{"columnia:blueprint", "columnia:blueprint"}},
})

-- Lamp
minetest.register_node("columnia:lamp_ceiling", {
    description = "Ceiling Lamp (Column)",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	inventory_image = "columnia_lamp_inv.png",
	tiles = {
	         "columnia_rusty.png", "columnia_lamp.png", "columnia_lamp.png",
		     "columnia_lamp.png", "columnia_lamp.png", "columnia_lamp.png"
	        },
	sunlight_propagates = true,
	light_source = 13,
	walkable = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.4375, -0.1875, 0.1875, 0.5, 0.1875},
			{-0.125, 0.375, -0.125, 0.125, 0.4375, 0.125}, 
		},
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
		output = 'columnia:lamp_ceiling 4',
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", ""},
			{"", "default:torch", ""},
			{"", "default:glass", ""},
		},
})

-- Rusty_Block

minetest.register_node("columnia:rusty_block", {
	description = "Rusty Block",
	tiles = {"columnia_rusty_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
		output = 'columnia:rusty_block 16',
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"default:steel_ingot", "bucket:bucket_water", "default:steel_ingot"},
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		},
		replacements = {{"bucket:bucket_water", "bucket:bucket_water"}},
})

dofile(minetest.get_modpath("columnia").."/columnia.lua")
dofile(minetest.get_modpath("columnia").."/machines.lua")
dofile(minetest.get_modpath("columnia").."/register.lua")








