-- windows
-- Add some simple windownodes to minetest.
-- WTFPL Lizences - 2014 by Glunggi
windows={}

-- wooden windows
minetest.register_node("windows:windows_wood", {
    description = "Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_seam.png", "windows_windows_wood_seam.png", "windows_windows_wood_seam.png",
		"windows_windows_wood_seam.png", "windows_windows_wood_front.png", "windows_windows_wood_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood 4',
	recipe = {
		{'group:wood', 'default:glass', 'group:wood'},
		{'default:glass', 'default:glass', 'default:glass'},
		{'group:wood', 'default:glass', 'group:wood'},
	}
})

--[[

minetest.register_node("windows:windows_jwood", {
    description = "Junglewood Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_jwood_seam.png", "windows_windows_jwood_seam.png", "windows_windows_jwood_seam.png",
		"windows_windows_jwood_seam.png", "windows_windows_jwood_front.png", "windows_windows_jwood_front.png"},
	sunlight_propagates = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_jwood 4',
	recipe = {
		{'default:junglewood', 'default:glass', 'default:junglewood'},
		{'default:glass', 'default:glass', 'default:glass'},
		{'default:junglewood', 'default:glass', 'default:junglewood'},
	}
})

minetest.register_node("windows:windows_palewood", {
    description = "Palewood Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_palewood_seam.png", "windows_windows_palewood_seam.png", "windows_windows_palewood_seam.png",
		"windows_windows_palewood_seam.png", "windows_windows_palewood_front.png", "windows_windows_palewood_front.png"},
	sunlight_propagates = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_palewood 4',
	recipe = {
		{'default:palewood', 'default:glass', 'default:palewood'},
		{'default:glass', 'default:glass', 'default:glass'},
		{'default:palewood', 'default:glass', 'default:palewood'},
	}
})

]]

--modern Glassfront

minetest.register_node("windows:windows_obsidian", {
    description = "Obsidian Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_obsidian_seam.png", "windows_windows_obsidian_seam.png", "windows_windows_obsidian_seam.png",
		"windows_windows_obsidian_seam.png", "windows_windows_obsidian_front.png", "windows_windows_obsidian_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, 0.375, 0.4375, 0.4375, 0.5},
			{0.4375, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, 0.5, -0.4375, 0.5},
			{-0.5, 0.4375, 0.3125, 0.5, 0.5, 0.5},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_obsidian 4',
	recipe = {
		{'default:obsidian_shard', 'default:obsidian_glass', 'default:obsidian_shard'},
		{'default:obsidian_glass', 'default:obsidian_glass', 'default:obsidian_glass'},
		{'default:obsidian_shard', 'default:obsidian_glass', 'default:obsidian_shard'},
	}
})

-- colored Windows

minetest.register_node("windows:windows_wood_white", {
    description = "White Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_white_seam.png", "windows_windows_wood_white_seam.png", "windows_windows_wood_white_seam.png",
		"windows_windows_wood_white_seam.png", "windows_windows_wood_white_front.png", "windows_windows_wood_white_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_white',
	recipe = {
		{'group:window_wood', 'dye:white', ''},
	}
})

minetest.register_node("windows:windows_wood_black", {
    description = "Black Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_black_seam.png", "windows_windows_wood_black_seam.png", "windows_windows_wood_black_seam.png",
		"windows_windows_wood_black_seam.png", "windows_windows_wood_black_front.png", "windows_windows_wood_black_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_black',
	recipe = {
		{'group:window_wood', 'dye:black', ''},
	}
})

minetest.register_node("windows:windows_wood_blue", {
    description = "Blue Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_blue_seam.png", "windows_windows_wood_blue_seam.png", "windows_windows_wood_blue_seam.png",
		"windows_windows_wood_blue_seam.png", "windows_windows_wood_blue_front.png", "windows_windows_wood_blue_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_blue',
	recipe = {
		{'group:window_wood', 'dye:blue', ''},
	}
})

minetest.register_node("windows:windows_wood_brown", {
    description = "Brown Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_brown_seam.png", "windows_windows_wood_brown_seam.png", "windows_windows_wood_brown_seam.png",
		"windows_windows_wood_brown_seam.png", "windows_windows_wood_brown_front.png", "windows_windows_wood_brown_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_brown',
	recipe = {
		{'group:window_wood', 'dye:brown', ''},
	}
})

minetest.register_node("windows:windows_wood_grey", {
    description = "Grey Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_grey_seam.png", "windows_windows_wood_grey_seam.png", "windows_windows_wood_grey_seam.png",
		"windows_windows_wood_grey_seam.png", "windows_windows_wood_grey_front.png", "windows_windows_wood_grey_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_grey',
	recipe = {
		{'group:window_wood', 'dye:grey', ''},
	}
})

minetest.register_node("windows:windows_wood_darkgrey", {
    description = "Darkgrey Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_darkgrey_seam.png", "windows_windows_wood_darkgrey_seam.png", "windows_windows_wood_darkgrey_seam.png",
		"windows_windows_wood_darkgrey_seam.png", "windows_windows_wood_darkgrey_front.png", "windows_windows_wood_darkgrey_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_darkgrey',
	recipe = {
		{'group:window_wood', 'dye:dark_grey', ''},
	}
})

minetest.register_node("windows:windows_wood_darkgreen", {
    description = "Darkgreen Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_darkgreen_seam.png", "windows_windows_wood_darkgreen_seam.png", "windows_windows_wood_darkgreen_seam.png",
		"windows_windows_wood_darkgreen_seam.png", "windows_windows_wood_darkgreen_front.png", "windows_windows_wood_darkgreen_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_darkgreen',
	recipe = {
		{'group:window_wood', 'dye:dark_green', ''},
	}
})

minetest.register_node("windows:windows_wood_green", {
    description = "Green Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_green_seam.png", "windows_windows_wood_green_seam.png", "windows_windows_wood_green_seam.png",
		"windows_windows_wood_green_seam.png", "windows_windows_wood_green_front.png", "windows_windows_wood_green_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_green',
	recipe = {
		{'group:window_wood', 'dye:green', ''},
	}
})

minetest.register_node("windows:windows_wood_violet", {
    description = "Violet Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_violet_seam.png", "windows_windows_wood_violet_seam.png", "windows_windows_wood_violet_seam.png",
		"windows_windows_wood_violet_seam.png", "windows_windows_wood_violet_front.png", "windows_windows_wood_violet_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_violet',
	recipe = {
		{'group:window_wood', 'dye:violet', ''},
	}
})

minetest.register_node("windows:windows_wood_cyan", {
    description = "Cyan Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_cyan_seam.png", "windows_windows_wood_cyan_seam.png", "windows_windows_wood_cyan_seam.png",
		"windows_windows_wood_cyan_seam.png", "windows_windows_wood_cyan_front.png", "windows_windows_wood_cyan_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_cyan',
	recipe = {
		{'group:window_wood', 'dye:cyan', ''},
	}
})

minetest.register_node("windows:windows_wood_yellow", {
    description = "Yellow Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_yellow_seam.png", "windows_windows_wood_yellow_seam.png", "windows_windows_wood_yellow_seam.png",
		"windows_windows_wood_yellow_seam.png", "windows_windows_wood_yellow_front.png", "windows_windows_wood_yellow_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_yellow',
	recipe = {
		{'group:window_wood', 'dye:yellow', ''},
	}
})

minetest.register_node("windows:windows_wood_orange", {
    description = "Orange Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_orange_seam.png", "windows_windows_wood_orange_seam.png", "windows_windows_wood_orange_seam.png",
		"windows_windows_wood_orange_seam.png", "windows_windows_wood_orange_front.png", "windows_windows_wood_orange_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_orange',
	recipe = {
		{'group:window_wood', 'dye:orange', ''},
	}
})

minetest.register_node("windows:windows_wood_red", {
    description = "Red Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_red_seam.png", "windows_windows_wood_red_seam.png", "windows_windows_wood_red_seam.png",
		"windows_windows_wood_red_seam.png", "windows_windows_wood_red_front.png", "windows_windows_wood_red_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_red',
	recipe = {
		{'group:window_wood', 'dye:red', ''},
	}
})

minetest.register_node("windows:windows_wood_magenta", {
    description = "Magenta Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_magenta_seam.png", "windows_windows_wood_magenta_seam.png", "windows_windows_wood_magenta_seam.png",
		"windows_windows_wood_magenta_seam.png", "windows_windows_wood_magenta_front.png", "windows_windows_wood_magenta_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_magenta',
	recipe = {
		{'group:window_wood', 'dye:magenta', ''},
	}
})

minetest.register_node("windows:windows_wood_pink", {
    description = "Pink Wooden Window",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_wood_pink_seam.png", "windows_windows_wood_pink_seam.png", "windows_windows_wood_pink_seam.png",
		"windows_windows_wood_pink_seam.png", "windows_windows_wood_pink_front.png", "windows_windows_wood_pink_front.png"},
	sunlight_propagates = true,
	use_texture_alpha = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3, window_wood=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'windows:windows_wood_pink',
	recipe = {
		{'group:window_wood', 'dye:pink', ''},
	}
})


-- Paper wall
minetest.register_node("windows:paperwall", {
    description = "Paperwall",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"windows_windows_jwood_seam.png", "windows_windows_jwood_seam.png", "windows_windows_jwood_seam.png",
		"windows_windows_jwood_seam.png", "windows_paperwall_front.png", "windows_paperwall_front.png"},
	sunlight_propagates = true,
	walkable = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.0625, 0.4375, 0.4375, 0.0625},
			{0.4375, -0.5, -0.125, 0.5, 0.5, 0.125},
			{-0.5, -0.5, -0.125, -0.4375, 0.5, 0.125},
			{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.125},
			{-0.5, 0.4375, -0.125, 0.5, 0.5, 0.125},
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = 'windows:paperwall 4',
	recipe = {
		{'group:wood', 'default:paper', 'group:wood'},
		{'default:paper', 'default:paper', 'default:paper'},
		{'group:wood', 'default:paper', 'group:wood'},
	}
})
