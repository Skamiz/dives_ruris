-- externgen for generate some mapgenstuff extern 2015 by Glünggi wtfpl


externgen = {}

-- seeground
minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:seeground",
		wherein          = {"default:sand", "default:gravel"},
		clust_scarcity   = 10*10*10,
		clust_size       = 7,
		y_min            = -100,
		y_max            = -8,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=15, y=5, z=15},
			seed=-163,
			octaves=1,
			persist=0.5
		},
	})


-- coal desert_stone
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_stone_with_coal",
		wherein        = "default:desert_stone",
		clust_scarcity = 8*8*8,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -100,
		y_max          = 31000,
	})

-- iron desert_stone
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_stone_with_iron",
		wherein        = "default:desert_stone",
		clust_scarcity = 15*15*15,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -100,
		y_max          = -1,
	})

--- gems
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite_with_ruby",
		wherein        = "default:granite",
		clust_scarcity = 12*12*12,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -1,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite_with_amethyst",
		wherein        = "default:granite",
		clust_scarcity = 12*12*12,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -1,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite_with_topaz",
		wherein        = "default:granite",
		clust_scarcity = 12*12*12,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -1,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite_with_emerald",
		wherein        = "default:granite",
		clust_scarcity = 12*12*12,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -1,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite_with_sapphire",
		wherein        = "default:granite",
		clust_scarcity = 12*12*12,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -1,
	})
--- Stonesalt

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_stone_with_salt",
		wherein        = "default:desert_stone",
		clust_scarcity = 8*8*8,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -100,
		y_max          = 31000,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_salt",
		wherein        = "default:stone",
		clust_scarcity = 8*8*8,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -256,
		y_max          = 31000,
	})
-- randomizers
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:block_randomizer",
		wherein        = "default:granite",
		clust_scarcity = 8*8*8,
		clust_num_ores = 1,
		clust_size     = 3,
		y_min          = -56,
		y_max          = 31000,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:vase_randomizer",
		wherein        = {"default:stone", "default:desert_stone"},
		clust_scarcity = 24*24*24,
		clust_num_ores = 1,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = 31000,
	})

	-- more gravel
minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:gravel",
		wherein          = {"default:stone"},
		clust_scarcity   = 24*24*24,
		clust_size       = 18,
		y_min            = -30000,
		y_max            = 10,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=5, y=5, z=5},
			seed=324,
			octaves=1,
			persist=0.5
		},
	})

minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:desert_gravel",
		wherein          = {"default:desert_stone"},
		clust_scarcity   = 24*24*24,
		clust_size       = 18,
		y_min            = -30000,
		y_max            = 10,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=5, y=5, z=5},
			seed=324,
			octaves=1,
			persist=0.5
		},
	})

-- bushes for grasland:
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.008,
	biomes = {"default:grassland"},
	decoration = {"simple_bushes:white", "simple_bushes:yellow",},
	spawn_by = {"default:flowers_budder", "default:flowers_marg"},
	num_spawn_by = 1,
})


--groundleaves for jungle
minetest.register_node("externgen:scrub", {
	description = "Scrub",
	drawtype = "allfaces_optional",
	tiles = {"default_scrub.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	groups = {snappy=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 20,
			},
			{
				items = {''},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.9,
	biomes = {"default:jungle"},
	decoration = {"externgen:scrub"},
	spawn_by = {"default:tree_jungle", "default:dirt_jungle_with_grass"},
	num_spawn_by = 1,
})





---
---Sealife (original by TenPlus1)
---
-- Randomly generate Coral or Seaweed and have Seaweed grow up to 10 high
minetest.register_abm({
	label = "Generate underwater plants",
	nodenames = {"default:seeground"},
	neighbors = {"group:water"},
	interval = 75,
	chance = 25,

	action = function(pos, node)

		local sel = math.random(1,5)
		if sel == 1 and minetest.get_node(pos).name == "default:seaweed" then

			local height = 0

			while minetest.get_node(pos).name == "default:seaweed"
			or minetest.get_node(pos).name == "default:seeground"
			and height < 14 do
				height = height + 1
				pos.y = pos.y + 1
			end

			if height < 14 and pos.y < 0 then
				if minetest.get_node(pos).name == "default:water_source" then
					minetest.set_node(pos, {name="default:seaweed"})
--					print ("GOING UP")
				end
			end

		else

			pos.y = pos.y + 1

			if minetest.get_node(pos).name == "default:water_source" then
			local pos0 = {x=pos.x-5,y=pos.y-5,z=pos.z-5}
		    local pos1 = {x=pos.x+5,y=pos.y+5,z=pos.z+5}
			   if #minetest.find_nodes_in_area(pos0, pos1, "group:sealife") > 3 then
			      return
	           end
			    if sel == 1 then
				minetest.set_node(pos, {name="default:seaweed"})
				else
				minetest.set_node(pos, {name="default:coral"..sel})
				end
--				print ("CORAL ", sel)
			end

		end
	end,
})

-- generate Cavestuff

local path = minetest.get_modpath("externgen").."/schematics/"


minetest.register_on_generated(function(minp, maxp, seed)

	local coal_nodes = minetest.find_nodes_in_area(minp, maxp, "default:stone_with_copper")

	for key, pos in pairs(coal_nodes) do

		local bpos = { x=pos.x, y=pos.y + 1, z=pos.z }
        local bpos2 = { x=pos.x, y=pos.y + 2, z=pos.z }
		if minetest.get_node(bpos).name == "air" and minetest.get_node(bpos2).name == "air" and pos.y <= -150 then
		        local pla = math.random(1,8)
				if pla >= 7 then
				   return
				end
				local bpos = { x=pos.x - 1, y=pos.y + 1, z=pos.z - 1 }
				minetest.place_schematic(bpos, path.."lavaspot.mts", 0, '', 0)


		end
	end
end)

minetest.register_on_generated(function(minp, maxp, seed)
	local coal_nodes = minetest.find_nodes_in_area(minp, maxp, "default:stone_with_diamond")

	for key, pos in pairs(coal_nodes) do

		local bpos = { x=pos.x, y=pos.y + 1, z=pos.z }
		local bpos2 = { x=pos.x, y=pos.y + 2, z=pos.z }

		if minetest.get_node(bpos).name == "air" and minetest.get_node(bpos2).name == "air" and pos.y <= -300 then

				local pla = math.random(1,8)
				if pla >= 2 then
				   return
				end
				minetest.place_schematic(bpos, path.."occulus.mts", 0, '', 0)


		end
	end
end)

-- Dungeon
-- Vasenode

minetest.register_node("externgen:vase_level1", {
    description = "Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level1.png", "externgen_vase_level1.png", "externgen_vase_level1side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
	drop = {
			items = {
				{items = {"default:torch"}, rarity = 1},
				{items = {"default:steel_ingot"}, rarity = 4},
				{items = {"default:hardened_leather"}, rarity = 2},
				{items = {"default:sword_steel"}, rarity = 17},
			}
	},
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
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("externgen:vase_level2", {
    description = "Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level2.png", "externgen_vase_level2.png", "externgen_vase_level2side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
	drop = {
			items = {
				{items = {"default:torch"}, rarity = 1},
				{items = {"default:steel_ingot"}, rarity = 2},
				{items = {"default:hardened_leather"}, rarity = 1},
				{items = {"default:bronze_ingot"}, rarity = 5},
				{items = {"default:sword_diamond"}, rarity = 88},
			}
	},
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
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("externgen:vase_level3", {
    description = "Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level3.png", "externgen_vase_level3.png", "externgen_vase_level3side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
	drop = {
			items = {
				{items = {"default:bronze_ingot"}, rarity = 1},
				{items = {"default:gold_lump"}, rarity = 3},
				{items = {"default:mese_crystal_fragment"}, rarity = 4},
				{items = {"default:mese_crystal_fragment"}, rarity = 5},
				{items = {"default:mese_crystal_fragment"}, rarity = 6},
				{items = {"default:sword_diamond"}, rarity = 77},
			}
	},
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
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("externgen:vase_level4", {
    description = "Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level4.png", "externgen_vase_level4.png", "externgen_vase_level4side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
	drop = {
			items = {
				{items = {"default:mese_crystal"}, rarity = 3},
				{items = {"default:mese_crystal"}, rarity = 4},
				{items = {"default:gold_ingot"}, rarity = 1},
				{items = {"default:gold_ingot"}, rarity = 3},
				{items = {"default:diamond"}, rarity = 5},
				{items = {"default:sword_diamond"}, rarity = 66},
			}
	},
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
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("externgen:vase_level5", {
    description = "Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level5.png", "externgen_vase_level5.png", "externgen_vase_level5side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
	drop = {
			items = {
				{items = {"default:mese_crystal"}, rarity = 1},
				{items = {"default:ruby"}, rarity = 4},
				{items = {"default:topaz"}, rarity = 4},
				{items = {"default:emerald"}, rarity = 4},
				{items = {"default:sapphire"}, rarity = 4},
				{items = {"default:amethyst"}, rarity = 4},
				{items = {"default:mese"}, rarity = 11},
				{items = {"default:diamondblock"}, rarity = 22},
				{items = {"default:diamond"}, rarity = 8},
				{items = {"default:sword_diamond"}, rarity = 55},
			}
	},
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
	sounds = default.node_sound_glass_defaults(),
})

-- vase for craft

minetest.register_node("externgen:vase_level5_c", {
    description = "Obsidian Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level5.png", "externgen_vase_level5.png", "externgen_vase_level5side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
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
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'externgen:vase_level5_c',
	recipe = {
		{'', 'default:obsidian_shard', ''},
		{'default:obsidian_shard', 'default:gold_ingot', 'default:obsidian_shard'},
		{'default:obsidian_shard', 'default:obsidian_shard', 'default:obsidian_shard'},
	}
})

minetest.register_node("externgen:vase_level1_c", {
    description = "Vase",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"externgen_vase_level1.png", "externgen_vase_level1.png", "externgen_vase_level1side.png"},
	use_texture_alpha = "opaque",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,oddly_breakable_by_hand=3},
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
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'externgen:vase_level1_c',
	recipe = {
		{'', 'default:clay_lump', ''},
		{'default:clay_lump', 'dye:white', 'default:clay_lump'},
		{'default:clay_lump', 'default:clay_lump', 'default:clay_lump'},
	}
})

-- failed code
--[[
minetest.register_on_generated(function(minp, maxp, seed)


	local copper_nodes = minetest.find_nodes_in_area(minp, maxp, {"default:stone_with_coal", "default:stone_with_tin"})

	for key, pos in pairs(copper_nodes) do
		   local bpos = { x=pos.x, y=pos.y + 1, z=pos.z }
           local bpos2 = { x=pos.x, y=pos.y + 2, z=pos.z }
		   if minetest.get_node(bpos).name == "air" and minetest.get_node(bpos2).name == "air" and pos.y <= -110 then

				local para1 = {}
				local vasentyp = {}
				if pos.y >= -250 then para1 = 1
				elseif pos.y>= -500 and pos.y<= -251 then para1 = 2
				elseif pos.y>= -750 and pos.y<= -501 then para1 = 3
				elseif pos.y>= -1000 and pos.y<= -751 then para1 = 4
				elseif pos.y>= -1500 and pos.y<= -1001 then para1 = 5
				elseif pos.y<= -1501 then para1 = 6
				end
				local va_a = para1
				local va_b = para1 * 2
				local rndvase = math.random(va_a,va_b)
				if rndvase <= 3 then vasentyp = "externgen:vase_level1"
				elseif rndvase >= 4 and rndvase <= 6 then vasentyp = "externgen:vase_level2"
				elseif rndvase >= 7 and rndvase <= 9 then vasentyp = "externgen:vase_level3"
				elseif rndvase >= 10 and rndvase <= 11 then vasentyp = "externgen:vase_level4"
				elseif rndvase >= 12 then vasentyp = "externgen:vase_level5"
				end
                local pla = math.random(1,8)
				if pla >= 7 then
				   return
				end
				minetest.set_node(bpos, {name = vasentyp})
		   end

	end
end)
--]]
--[[
minetest.register_on_generated(function(minp, maxp, seed)


	local mossy_nodes = minetest.find_nodes_in_area(minp, maxp, "default:mossycobble")

	for key, pos in pairs(mossy_nodes) do
		   local bpos = { x=pos.x, y=pos.y + 1, z=pos.z }
           local bpos2 = { x=pos.x, y=pos.y + 2, z=pos.z }
		   if minetest.get_node(bpos).name == "air" and minetest.get_node(bpos2).name == "air" and pos.y <= -110 then

				local para1 = {}
				local vasentyp = {}
				if pos.y >= -250 then para1 = 1
				elseif pos.y>= -500 and pos.y<= -251 then para1 = 2
				elseif pos.y>= -750 and pos.y<= -501 then para1 = 3
				elseif pos.y>= -1000 and pos.y<= -751 then para1 = 4
				elseif pos.y>= -1500 and pos.y<= -1001 then para1 = 5
				elseif pos.y<= -1501 then para1 = 6
				end
				local va_a = para1
				local va_b = para1 * 2
				local rndvase = math.random(va_a,va_b)
				if rndvase <= 3 then vasentyp = "externgen:vase_level1"
				elseif rndvase >= 4 and rndvase <= 6 then vasentyp = "externgen:vase_level2"
				elseif rndvase >= 7 and rndvase <= 9 then vasentyp = "externgen:vase_level3"
				elseif rndvase >= 10 and rndvase <= 11 then vasentyp = "externgen:vase_level4"
				elseif rndvase >= 12 then vasentyp = "externgen:vase_level5"
				end
				local pla = math.random(1,8)
                if pla >= 7 then
				   return
				end
				minetest.set_node(bpos, {name = vasentyp})
		   end

	end
end)
--]]
