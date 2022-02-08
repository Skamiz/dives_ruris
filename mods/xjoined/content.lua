if minetest.get_modpath("default") then

	xjoined.register_wall_recipe("xjoined:wall_tree 8", "default:tree")
	xjoined.register_wall("xjoined:wall_tree", {
		description = "Tree Wall",
		tiles = {"default_tree.png"},
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_wood 8", "default:wood")
	xjoined.register_wall("xjoined:wall_wood", {
		description = "Wood Wall",
		tiles = {"default_wood.png"},
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_stone 8", "default:stone")
	xjoined.register_wall("xjoined:wall_stone", {
		description = "Stone Wall",
		tiles = {"default_stone.png"},
		groups = {cracky = 3},
	})
	xjoined.register_wall_recipe("xjoined:wall_cobble 8", "default:cobble")
	xjoined.register_wall("xjoined:wall_cobble", {
		description = "Cobblestone Wall",
		tiles = {"default_cobble.png"},
		groups = {cracky = 3},
	})
	xjoined.register_wall_recipe("xjoined:wall_mossycobble 8", "default:mossycobble")
	xjoined.register_wall("xjoined:wall_mossycobble", {
		description = "Mossy Cobblestone Wall",
		tiles = {"default_mossycobble.png"},
		groups = {cracky = 3},
	})
	xjoined.register_wall_recipe("xjoined:wall_desert_cobble 8", "default:desert_cobble")
	xjoined.register_wall("xjoined:wall_desert_cobble", {
		description = "Desert Cobblestone Wall",
		tiles = {"default_desert_cobble.png"},
		groups = {cracky = 3},
	})
	xjoined.register_wall_recipe("xjoined:wall_brick 8", "default:brick")
	xjoined.register_wall("xjoined:wall_brick", {
		description = "Brick Wall",
		tiles = {"default_brick.png"},
		groups = {cracky = 3},
	})
	xjoined.register_wall_recipe("xjoined:wall_stone_brick 8", "default:stonebrick")
	xjoined.register_wall("xjoined:wall_stone_brick", {
		description = "Stonebrick Wall",
		tiles = {"default_stone_brick.png"},
		groups = {cracky = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_sandstone_brick 8", "default:sandstonebrick")
	xjoined.register_wall("xjoined:wall_sandstone_brick", {
		description = "Sandstone Wall",
		tiles = {"default_sandstone_brick.png"},
		groups = {cracky = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_desert_stone_brick 8", "default:desert_stonebrick")
	xjoined.register_wall("xjoined:wall_desert_stone_brick", {
		description = "Desert Stonebrick Wall",
		tiles = {"default_desert_stone_brick.png"},
		groups = {cracky = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_obsidian_brick 8", "default:obsidianbrick")
	xjoined.register_wall("xjoined:wall_obsidian_brick", {
		description = "Obsidianbrick Wall",
		tiles = {"default_obsidian_brick.png"},
		groups = {cracky = 1, level = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_hedge 8", "default:leaves")
	xjoined.register_wall("xjoined:wall_hedge", {
		description = "Hedge",
		tiles = {"default_leaves.png"},
		groups = {snappy = 3, flammable = 2},
	})
	xjoined.register_wall_recipe("xjoined:wall_clay 8", "default:clay")
	xjoined.register_wall("xjoined:wall_clay", {
		description = "Clay Wall",
		tiles = {"default_clay.png"},
		groups = {crumbly = 3},
	})
	xjoined.register_wall_recipe("xjoined:wall_coal_block 8", "default:coalblock")
	xjoined.register_wall("xjoined:wall_coal_block", {
		description = "Coal Wall",
		tiles = {"default_coal_block.png"},
		groups = {cracky = 3},
	})


	-- xjoined.register_fence("xjoined:fence_cobble", {
	-- 	tiles = {"default_desert_cobble.png"},
	-- })

	xjoined.register_pane_recipe("xjoined:pane_glass 18", "default:glass")
	xjoined.register_pane("xjoined:pane_glass", {
		description = "Glass Pane",
		inventory_image = "default_glass.png",
		tiles = {"xjoined_glass_top.png", "xjoined_glass_top.png", "default_glass.png"},
		use_texture_alpha = "blend",
		groups = {cracky = 3, oddly_breakable_by_hand = 3},
	})

	xjoined.register_pane_recipe("xjoined:pane_obsidian_glass 18", "default:obsidian_glass")
	xjoined.register_pane("xjoined:pane_obsidian_glass", {
		description = "Obsidian Glass Pane",
		inventory_image = "default_obsidian_glass.png",
		tiles = {"xjoined_obsidian_glass_top.png", "xjoined_obsidian_glass_top.png", "default_obsidian_glass.png"},
		use_texture_alpha = "clip",
		groups = {cracky = 3},
	})

	xjoined.register_pane_recipe("xjoined:pane_bars 18", "default:steel_ingot")
	xjoined.register_pane("xjoined:pane_bars", {
		description = "Iron Bars",
		inventory_image = "xjoined_bars_side.png",
		tiles = {"xjoined_bars_top.png", "xjoined_bars_top.png", "xjoined_bars_side.png"},
		use_texture_alpha = "clip",
		groups = {cracky = 1, level = 1},
		node_box = {
			type = "connected",
			fixed = {-1/16, -8/16, -1/16, 1/16, 8/16, 1/16},
			connect_front = {
				{-1/16, -8/16, -8/16, 1/16, 8/16, -1/16},
				{-1/16, -8/16, -8/16, 1/16, 8/16, -7/16},
				{-1/16, -8/16, -5/16, 1/16, 8/16, -3/16},
			},
	        connect_left = {
				{-8/16, -8/16, -1/16, -1/16, 8/16, 1/16},
				{-8/16, -8/16, -1/16, -7/16, 8/16, 1/16},
				{-5/16, -8/16, -1/16, -3/16, 8/16, 1/16},
			},
	        connect_back = {
				{-1/16, -8/16, 1/16, 1/16, 8/16, 8/16},
				{-1/16, -8/16, 3/16, 1/16, 8/16, 5/16},
				{-1/16, -8/16, 7/16, 1/16, 8/16, 8/16},
			},
	        connect_right = {
				{1/16, -8/16, -1/16, 8/16, 8/16, 1/16},
				{3/16, -8/16, -1/16, 5/16, 8/16, 1/16},
				{7/16, -8/16, -1/16, 8/16, 8/16, 1/16},
			},
		}
	})

end
