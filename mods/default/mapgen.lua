-- mods/default/mapgen.lua

--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_jungletree", "default:tree_jungle")
minetest.register_alias("mapgen_jungleleaves", "default:leaves_jungle")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_clay", "default:clay")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_mossycobble", "default:mossycobble")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt_with_grass")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")
minetest.register_alias("mapgen_stone_with_coal", "default:stone_with_coal")
minetest.register_alias("mapgen_stone_with_iron", "default:stone_with_iron")
minetest.register_alias("mapgen_mese", "default:mese")
minetest.register_alias("mapgen_desert_sand", "default:desert_sand")
minetest.register_alias("mapgen_desert_stone", "default:desert_stone")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("default:junglewood", "default:wood_jungle")
minetest.register_alias("default:pinewood", "default:wood_pine")
minetest.register_alias("mapgen_river_water_source", "default:river_water_source")


minetest.set_mapgen_setting("mg_name", "v7", true)
minetest.set_mapgen_setting("mg_flags", "nodungeons", true)
minetest.set_mapgen_setting("mgv7_spflags", "ridges", true)
minetest.set_mapgen_setting("water_level", "1", true)


--
-- Ore generation
--

function default.register_ores()
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 8*8*8,
		clust_num_ores = 2,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = 31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 15*15*15,
		clust_num_ores = 33,
		clust_size     = 6,
		y_min          = -30000,
		y_max          = 0,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 15*15*15,
		clust_num_ores = 2,
		clust_size     = 2,
		y_min          = -14,
		y_max          = 31000,
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 9*9*9,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -15,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 15*15*15,
		clust_num_ores = 18,
		clust_size     = 8,
		y_min          = -30000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_mese",
		wherein        = "default:stone",
		clust_scarcity = 14*14*14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -256,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 15*15*15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -133,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 13*13*13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -256,
	})



	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 15*15*15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -500,
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_copper",
		wherein        = "default:stone",
		clust_scarcity = 12*12*12,
		clust_num_ores = 6,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -120,
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_tin",
		wherein        = "default:stone",
		clust_scarcity = 12*12*12,
		clust_num_ores = 6,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -120,
	})


		minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:marble",
		wherein          = {"default:stone"},
		clust_scarcity   = 20*20*20,
		clust_size       = 12,
		y_min            = -30000,
		y_max            = -40,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=15, y=15, z=15},
			seed=-3146,
			octaves=1,
			persist=0.5
		},
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite",
		ore_param2     = 128,
		wherein        = "default:stone",
		clust_scarcity = 32*32*32,
		clust_num_ores = 450,
		clust_size     = 10,
		y_min     = -149,
		y_max     = 31000,
		flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite",
		ore_param2     = 128,
		wherein        = "default:stone",
		clust_scarcity = 20*20*20,
		clust_num_ores = 550,
		clust_size     = 10,
		y_min     = -300,
		y_max     = -150,
		flags          = "absheight",
	})

		minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:granite",
		ore_param2     = 128,
		wherein        = "default:stone",
		clust_scarcity = 20*20*20,
		clust_num_ores = 650,
		clust_size     = 10,
		y_min     = -30000,
		y_max     = -301,
		flags          = "absheight",
	})

end

--[[
function default.generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, chunk_size, ore_per_chunk, height_min, height_max)
	minetest.log('action', "WARNING: default.generate_ore is deprecated")

	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	if chunk_size >= y_max - y_min + 1 then
		return
	end
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	--print("generate_ore num_chunks: "..dump(num_chunks))
	for i=1,num_chunks do
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= height_min and y0 <= height_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.get_node(p2).name == wherein then
						minetest.set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
	--print("generate_ore done")
end
--]]

--
-- Mgv6 papyrus, cactus, long grasses
--

function default.mgv6_ongen(minp, maxp, seed)

	function default.make_papyrus(pos, size)
		for y=0,size-1 do
			local p = {x=pos.x, y=pos.y+y, z=pos.z}
			local nn = minetest.get_node(p).name
			if minetest.registered_nodes[nn] and
				minetest.registered_nodes[nn].buildable_to then
				minetest.set_node(p, {name="default:papyrus"})
			else
				return
			end
		end
	end

	function default.make_cactus(pos, size)
		for y=0,size-1 do
			local p = {x=pos.x, y=pos.y+y, z=pos.z}
			local nn = minetest.get_node(p).name
			if minetest.registered_nodes[nn] and
				minetest.registered_nodes[nn].buildable_to then
				minetest.set_node(p, {name="default:cactus"})
			else
				return
			end
		end
	end

	if maxp.y >= 2 and minp.y <= 0 then
		-- Generate papyrus
		local perlin1 = minetest.get_perlin(354, 3, 0.7, 100)
		-- Assume X and Z lengths are equal
		local divlen = 8
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Determine papyrus amount from perlin noise
			local papyrus_amount = math.floor(perlin1:get2d({x=x0, y=z0}) * 45 - 20)
			-- Find random positions for papyrus based on this random
			local pr = PseudoRandom(seed+1)
			for i=0,papyrus_amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				if minetest.get_node({x=x,y=1,z=z}).name == "default:dirt_with_grass" and
						minetest.find_node_near({x=x,y=1,z=z}, 1, "default:water_source") then
					default.make_papyrus({x=x,y=2,z=z}, pr:next(2, 4))
				end
			end
		end
		end
		-- Generate cactuses
		local perlin1 = minetest.get_perlin(230, 3, 0.6, 100)
		-- Assume X and Z lengths are equal
		local divlen = 16
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Determine cactus amount from perlin noise
			local cactus_amount = math.floor(perlin1:get2d({x=x0, y=z0}) * 6 - 3)
			-- Find random positions for cactus based on this random
			local pr = PseudoRandom(seed+1)
			for i=0,cactus_amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				-- Find ground level (0...15)
				local ground_y = nil
				for y=30,0,-1 do
					if minetest.get_node({x=x,y=y,z=z}).name ~= "air" then
						ground_y = y
						break
					end
				end
				-- If desert sand, make cactus
				if ground_y and minetest.get_node({x=x,y=ground_y,z=z}).name == "default:desert_sand" then
					default.make_cactus({x=x,y=ground_y+1,z=z}, pr:next(3, 4))
				end
			end
		end
		end
		-- Generate grass
		local perlin1 = minetest.get_perlin(329, 3, 0.6, 100)
		-- Assume X and Z lengths are equal
		local divlen = 16
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Determine grass amount from perlin noise
			local grass_amount = math.floor(perlin1:get2d({x=x0, y=z0}) ^ 3 * 9)
			-- Find random positions for grass based on this random
			local pr = PseudoRandom(seed+1)
			for i=0,grass_amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				-- Find ground level (0...15)
				local ground_y = nil
				for y=30,0,-1 do
					if minetest.get_node({x=x,y=y,z=z}).name ~= "air" then
						ground_y = y
						break
					end
				end

				if ground_y then
					local p = {x=x,y=ground_y+1,z=z}
					local nn = minetest.get_node(p).name
					-- Check if the node can be replaced
					if minetest.registered_nodes[nn] and
						minetest.registered_nodes[nn].buildable_to then
						nn = minetest.get_node({x=x,y=ground_y,z=z}).name
						-- If desert sand, add dry shrub
						if nn == "default:desert_sand" then
							minetest.set_node(p,{name="default:dry_shrub"})

						-- If dirt with grass, add grass
						elseif nn == "default:dirt_with_grass" then
							minetest.set_node(p,{name="default:grass_"..pr:next(1, 5)})
						end
					end
				end

			end
		end
		end
	end

end

--
-- Generate nyan cats in all mapgens
--

-- facedir: 0/1/2/3 (head node facedir value)
-- length: length of rainbow tail
function default.make_nyancat(pos, facedir, length)
	local tailvec = {x=0, y=0, z=0}
	if facedir == 0 then
		tailvec.z = 1
	elseif facedir == 1 then
		tailvec.x = 1
	elseif facedir == 2 then
		tailvec.z = -1
	elseif facedir == 3 then
		tailvec.x = -1
	else
		--print("default.make_nyancat(): Invalid facedir: "+dump(facedir))
		facedir = 0
		tailvec.z = 1
	end
	local p = {x=pos.x, y=pos.y, z=pos.z}
	minetest.set_node(p, {name="default:nyancat", param2=facedir})
	for i=1,length do
		p.x = p.x + tailvec.x
		p.z = p.z + tailvec.z
		minetest.set_node(p, {name="default:nyancat_rainbow", param2=facedir})
	end
end


function default.generate_nyancats(minp, maxp, seed)
	local height_min = -31000
	local height_max = -32
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed + 9324342)
	local max_num_nyancats = math.floor(volume / (16*16*16))
	for i=1,max_num_nyancats do
		if pr:next(0, 1000) == 0 then
			local x0 = pr:next(minp.x, maxp.x)
			local y0 = pr:next(minp.y, maxp.y)
			local z0 = pr:next(minp.z, maxp.z)
			local p0 = {x=x0, y=y0, z=z0}
			default.make_nyancat(p0, pr:next(0,3), pr:next(3,15))
		end
	end
end


minetest.register_on_generated(default.generate_nyancats)

--
-- Register biomes
--

function default.register_biomes()
	minetest.clear_registered_biomes()



minetest.register_biome({
	name			= "default:grassland",
	node_top		= "default:dirt_with_grass", depth_top			= 1,
	node_filler		= "default:dirt",			depth_filler		= 5,
	y_min			= 2,						y_max				= 119,
	heat_point		= 50.0,						humidity_point		= 55.0, --55
})

minetest.register_biome({
	name			= "default:mediteran",
	node_top		= "default:dirt_med_with_grass", depth_top			= 1,
	node_filler		= "default:dirt_med",			depth_filler		= 5,
	y_min			= 2,						y_max				= 119,
	heat_point		= 70.0,				humidity_point		= 15.0, -- 55-25
})

minetest.register_biome({
	name			= "default:mediteran2",
	node_top		= "default:dirt_med_with_grass", depth_top			= 1,
	node_filler		= "default:dirt_med",			depth_filler		= 5,
	y_min			= 2,						y_max				= 119,
	heat_point		= 80.0,				humidity_point		= 15.0, -- 55-25
})

minetest.register_biome({
	name			= "default:deepforest",
	node_top		= "default:dirt_deep_with_grass", depth_top			= 1,
	node_filler		= "default:dirt_deep",			depth_filler		= 7,
	y_min			= 2,						y_max				= 119,
	heat_point		= 15.0,						humidity_point		= 45.0,--45
})

minetest.register_biome({
	name			= "default:jungle",
	node_top		= "default:dirt_jungle_with_grass", depth_top			= 1,
	node_filler		= "default:dirt_jungle",			depth_filler		= 10,
	node_stone      = "default:desert_stone",
	y_min			= 2,						y_max				= 119,
	heat_point		= 75.0,						humidity_point		= 85.0,--75-85
})

minetest.register_biome({
	name           = "default:desert",
	node_top       = "default:desert_sand",		depth_top      = 5,
	node_filler    = "default:desert_stone",	depth_filler   = 70,
	node_stone     = "default:desert_stone",
	y_min     = 2,							    y_max     = 119,
	heat_point     = 85.0,						humidity_point = 10.0,--10
})

minetest.register_biome({
	name			= "default:snowland",
	node_top		= "default:dirt_with_snow", depth_top			= 1,
	node_filler		= "default:stone",			depth_filler		= 6,
	node_dust       = "default:snow",
	y_min			= 2,						y_max				= 119,
	heat_point		= 5.0,						humidity_point		= 45.0,
})

	-- highlands
minetest.register_biome({
	name           = "default:deserthigh",
	node_top       = "default:sandstone",		depth_top      = 5,
	node_filler    = "default:desert_stone",	depth_filler   = 70,
	y_min     = 120,							    y_max     = 150,
	heat_point     = 85.0,						humidity_point = 10.0,
})

minetest.register_biome({
	name           = "default:junglehigh",
	node_top       = "default:desert_gravel",		depth_top      = 5,
	node_filler    = "default:desert_stone",		depth_filler   = 70,
	node_stone      = "default:desert_stone",
	y_min     = 120,							    y_max     = 150,
	heat_point     = 75.0,							humidity_point = 85.0,
})

minetest.register_biome({
	name           = "default:medhigh",
	node_top       = "default:gravel",			depth_top      = 5,
	node_filler    = "default:stone",			depth_filler   = 70,
	y_min     = 120,							y_max     = 150,
	heat_point     = 65.0,						humidity_point = 10.0,
})

minetest.register_biome({
	name           = "default:coolhigh",
	node_top		= "default:snow", 			depth_top			= 1,
	node_filler		= "default:gravel",			depth_filler		= 6,
	node_dust       = "default:snow",
	y_min     = 120,							y_max     = 150,
	heat_point     = 50.0,						humidity_point = 55.0,
})


minetest.register_biome({
	name			= "default:highland",
	node_top		= "default:snowblock",           depth_top			= 2,
	node_filler		= "default:ice",			depth_filler		= 6,
	node_dust       = "default:snow",
	y_min			= 151,						y_max				= 31000,
	heat_point		= 55.0,						humidity_point		= 55.0,
})


-- shore's

minetest.register_biome({
	name			= "default:shore1",
	node_top		= "default:sand",	        depth_top			= 2,
	node_filler		= "default:sand",			depth_filler		= 5,
	y_min			= 0,						y_max				= 1,
	heat_point		= 75.0,						humidity_point		= 15.0,
})

minetest.register_biome({
	name			= "default:shore2",
	node_top		= "default:sand",	        depth_top			= 2,
	node_filler		= "default:sand",			depth_filler		= 5,
	y_min			= 0,						y_max				= 1,
	heat_point		= 65.0,						humidity_point		= 10.0,
})

minetest.register_biome({
	name			= "default:shore3",
	node_top		= "default:sand",	        depth_top			= 2,
	node_filler		= "default:sand",			depth_filler		= 5,
	y_min			= 0,						y_max				= 1,
	heat_point		= 75.0,						humidity_point		= 80.0,
})

minetest.register_biome({
	name			= "default:shoregr1",
	node_top		= "default:gravel",	        depth_top			= 2,
	node_filler		= "default:gravel",			depth_filler		= 5,
	y_min			= 0,						y_max				= 1,
	heat_point		= 50.0,						humidity_point		= 55.0,
})

minetest.register_biome({
	name			= "default:shoregr2",
	node_top		= "default:gravel",	        depth_top			= 2,
	node_filler		= "default:gravel",			depth_filler		= 5,
	y_min			= 0,						y_max				= 1,
	heat_point		= 30.0,						humidity_point		= 45.0,
})

minetest.register_biome({
	name			= "default:shoregr3",
	node_top		= "default:gravel",	        depth_top			= 2,
	node_filler		= "default:gravel",			depth_filler		= 5,
	y_min			= 0,						y_max				= 1,
	heat_point		= 10.0,						humidity_point		= 45.0,
})

minetest.register_biome({
		name = "default:shoreice",
		node_dust = "default:snow",
		node_top = "default:snowblock",
 		depth_top = 1,
		node_filler = "default:snowblock",
 		depth_filler = 1,
		node_water_top = "default:ice",
 		depth_water_top = 2,
 		--node_water = "",
 		node_river_water = "default:ice",
		y_min = 1,
		y_max = 2,
		heat_point = -5,
		humidity_point = 45,
	})

-- lakes

	minetest.register_biome({
	name			= "default:lake",
	node_top		= "default:sand",			depth_top = 3,
	node_filler		= "default:clay",			depth_filler = 4,
	node_water		= "default:water_source",	node_dust_water= "default:water_source",
	y_min		    = -115,					    y_max = -1,
	heat_point		= 50,						humidity_point = 50,
})

	minetest.register_biome({
	name			= "default:lakecool",
	node_top		= "default:gravel",			depth_top = 2,
	node_filler		= "default:clay",			depth_filler = 4,
	node_water		= "default:water_source",	node_dust_water= "default:water_source",
	y_min		    = -115,					    y_max = -1,
	heat_point		= 49,						humidity_point = 50,
})

-- Underground

	minetest.register_biome({
		name = "default:underground",
		--node_dust = "",
		--node_top = "",
		depth_top = 0,
		--node_filler = "",
		depth_filler = -15,
		--node_stone = "air",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		y_min = -30000,
		y_max = -113,
		heat_point = 55,
		humidity_point = 55,
	})


end
--
-- Register Schematics
--

local path = minetest.get_modpath("default").."/schematics/"


function default.register_decorations()
-- UG

minetest.register_on_generated(function(minp, maxp, seed)

	local coal_nodes = minetest.find_nodes_in_area(minp, maxp, "default:stone_with_gold")
    local dungname = {}
	for key, pos in pairs(coal_nodes) do

		local bpos = { x=pos.x, y=pos.y + 1, z=pos.z }
		local bpos2 = { x=pos.x, y=pos.y + 2, z=pos.z }

		if minetest.get_node(bpos).name == "air" and minetest.get_node(bpos2).name == "air" and pos.y <= -300 then

				local pla = math.random(1,8)
				if pla >= 3 then
				   return
				end
				local dung = math.random(1,3)
				if dung <= 1 then dungname = "dungeon_1"
				elseif dung == 2 then dungname = "dungeon_3"
				elseif dung >= 3 then dungname = "dungeon_2"
				end
				minetest.place_schematic(bpos, path..dungname..".mts", 0, '', 0)


		end
	end
end)

-- Grassland1
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0007,
	biomes = {"default:grassland"},
	schematic = path.."appletree_gen.mts",
	y_max = 100,
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0008,
	biomes = {"default:grassland"},
	y_max = 110,
	schematic = path.."beechtree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0009,
	biomes = {"default:grassland"},
	y_max = 100,
	schematic = path.."birchtree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0007,
	biomes = {"default:grassland"},
	y_max = 100,
	schematic = path.."poplartree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

--desert

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:desert_sand", "default:sand"},
	sidelen = 40, -- was 16
	fill_ratio = 0.00065,
	biomes = {"default:desert","default:shore1"},
	y_min = 1,
	y_max = 2,
	schematic = path.."palmtree_gen.mts",
	flags = "place_center_x, place_center_z",
})

--mediteran
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_med_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.00065,
	biomes = {"default:mediteran2", "default:mediteran"},
	y_max = 100,
	schematic = path.."orangetree_gen.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_med_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0007,
	biomes = {"default:mediteran", "default:mediteran2"},
	y_max = 100,
	schematic = path.."olivetree_gen.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})
--[[
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_med_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0007,
	biomes = {"default:medessert"},
	schematic = path.."acacia_tree.mts",

	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_med_with_grass"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.003,
			spread = {x = 550, y = 550, z = 550},
			seed = 46,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"default:mediteran"},
		schematic = path.."acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
--]]

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_med_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0007,
	biomes = {"default:mediteran", "default:mediteran2"},
	y_max = 110,
	schematic = path.."cypresstree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_med_with_grass"},
		sidelen = 80,
		noise_params = {
			offset = 0,
			scale = 0.003,
			spread = {x = 150, y = 150, z = 150},
			seed = 66,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"default:mediteran", "default:mediteran2"},
		y_max = 110,
		schematic = path.."cypresstree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

--Deep Forest
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_deep_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.002,
	biomes = {"default:deepforest"},
	schematic = path.."pinetree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_deep_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.01,
	biomes = {"default:deepforest"},
	y_max = 110,
	schematic = path.."beechtree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_deep_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.004,
	biomes = {"default:deepforest"},
	y_max = 100,
	schematic = path.."ahorntree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_deep_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.01,
	biomes = {"default:deepforest"},
	y_max = 100,
	schematic = path.."oaktree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

--Snowland
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_snow",
	sidelen = 40, -- was 16
	noise_params = {
			offset = 0.006,
			scale = 0.005,
			spread = {x=50, y=50, z=50},
			seed = 5,
			octaves = 3,
			persist = 0.66
		},
	biomes = {"default:snowland", "default:coolhigh"},
	schematic = path.."snowpine.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

--jungle
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.004,
	biomes = {"default:jungle"},
	y_max = 100,
	schematic = path.."jungletreexxl.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.01,
	biomes = {"default:jungle"},
	y_max = 100,
	schematic = path.."jungletree2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.01,
	biomes = {"default:jungle"},
	y_max = 100,
	schematic = path.."jungletree3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0008,
	biomes = {"default:jungle"},
	y_max = 110,
	schematic = path.."rubbertree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0008,
	biomes = {"default:jungle"},
	y_max = 100,
	schematic = path.."cocoatree_gen.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 40, -- was 16
	fill_ratio = 0.0008,
	biomes = {"default:jungle"},
	y_max = 100,
	schematic = path.."bananatree_gen.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	--
	-- Register decorations
	--

	-- Flowers
-- Grassland
	minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.030,
	biomes = {"default:grassland"},
	decoration = {"default:flowers_marg", "default:flowers_lavendel", "default:flowers_geranium", "default:flowers_tulip", "default:flowers_budder", "default:flowers_rose"},
})

--Mediterran
	minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_med_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.010,
	biomes = {"default:mediteran"},
	decoration = {"default:flowers_cosmo", "default:grass_3", "default:flowers_lavendel", "default:flowers_geranium", "default:flowers_heliconia", "simple_bushes:red"},
})

	minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_med_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.010,
	biomes = {"default:mediteran2"},
	decoration = {"default:flowers_marg", "default:grass_3", "default:flowers_silk", "default:flowers_rose", "default:flowers_heliconia", "simple_bushes:orange"},
})

--Deepforest
	minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_deep_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.020,
	biomes = {"default:deepforest"},
	decoration = {"default:flowers_dandelion_white", "default:flowers_lavendel", "default:flowers_dandelion_yellow", 'simple_bushes:green'},
})

--jungle

	minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_jungle_with_grass",
	sidelen = 16, -- was 16
	fill_ratio = 0.030,
	biomes = {"default:jungle"},
	decoration = {"default:flowers_silk", "default:flowers_viola", "default:flowers_heliconia", "simple_bushes:violet", "simple_bushes:orange"},
})

--snow

	minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_snow",
	sidelen = 16, -- was 16
	fill_ratio = 0.008,
	biomes = {"default:snowland", "default:coolhigh",},
	decoration = {"simple_bushes:blue"},
	spawn_by = {"default:dirt_deep_with_grass", "default:dirt_med_with_grass", "default:dirt_with_grass", "default:gravel"},
	num_spawn_by = 1,
})

--[[
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.02,
			scale = 0.03,
			spread = {x=100, y=100, z=100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland"},
		y_min = -31000,
		y_max = 31000,
		decoration = "flowers:rose",
	})
]]


-- Grasses

--Deepforestgrass (grass 1)
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_deep_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.18,
	biomes = {"default:deepforest"},
	decoration = "default:grass_1",
})
-- mediterrangrass (grass 2 + 3)
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_med_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.08,
	biomes = {"default:mediteran", "default:mediteran2"},
	decoration = {"default:grass_2", "default:grass_3"},
})
--Grasslandgrass (Grass 4 + 5)
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.18,
	biomes = {"default:grassland"},
	decoration = {"default:grass_4", "default:grass_5"},
})

--[[
minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_jungle_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.04,
			scale = 0.08,
			spread = {x=100, y=100, z=100},
			seed = 66440,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"jungle"},
		y_min = -31000,
		y_max = 31000,
		decoration = "default:junglegrass",
	})
]]

-- Jungle Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_jungle_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.18,
	biomes = {"default:jungle"},
	decoration = {"default:junglegrass", "default:junglegrass2"}
})




-- snow

minetest.register_decoration({							-- Snow
	deco_type = "simple",
	place_on = {"default:dirt_with_snow"},
	sidelen = 16, -- was 16
	fill_ratio = 0.007,
	biomes = {"default:highland"},
	decoration = "default:snow",
})

--
--food
--

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.007,
	biomes = {"default:grassland"},
	decoration = {"farming:onion_3", "farming:salad_3", "farming:beens_3"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_med_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.007,
	biomes = {"default:mediteran"},
	decoration = {"farming:tomato_3"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_med_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.007,
	biomes = {"default:mediteran2"},
	decoration = {"farming:corn_3", "farming:pepper_3"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_deep_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.007,
	biomes = {"default:deepforest"},
	decoration = {"farming:carrot_3", "farming:mushroom_3", "farming:strawberry_3"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_jungle_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.007,
	biomes = {"default:jungle"},
	decoration = {"farming:ananas_3", "farming:potato_3", "default:poison_erwin"},
})


--
-- plants
--

minetest.register_decoration({
 		deco_type = "schematic",
 		place_on = {"default:gravel"},
 		sidelen = 16,
		noise_params = {
 			offset = -0.12,
 			scale = 0.3,
 			spread = {x = 200, y = 200, z = 200},
 			seed = 33,
 			octaves = 3,
			persist = 0.7
 		},
		biomes = {"default:shoregr1", "default:shoregr2"},
		y_min = 0,
		y_max = 0,
 		schematic = minetest.get_modpath("flowers").."/schematics/waterlily.mts",
		rotation = "random",
	})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_jungle_with_grass"},
	sidelen = 16, -- was 16
	fill_ratio = 0.0065,
	biomes = {"default:jungle"},
	decoration = "default:sugarcane",
	height = 2,
	height_max = 3,
	--spawn_by = "default:water_source",
	--num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:sand"},
	sidelen = 16, -- was 16
	fill_ratio = 0.09,
	biomes = {"default:shore1", "default:shore2", "default:shore3"},
	decoration = "default:papyrus",
	height = 2,
	height_max = 4,
	spawn_by = "default:water_source",
	num_spawn_by = 1,
	y_min = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:gravel"},
	sidelen = 16, -- was 16
	fill_ratio = 0.09,
	biomes = {"default:shoregr1", "default:shoregr2", "default:shoregr3"},
	decoration = {"default:reed", "default:reed2"},
	spawn_by = "default:water_source",
	num_spawn_by = 1,
	y_min = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16, -- was 16
	fill_ratio = 0.04,
	biomes = {"default:desert"},
	decoration = "default:cactus",
	spawn_by = {"default:stone", "default:desert_stone"},
	num_spawn_by = 2,
	height = 3,
	height_max = 4,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16, -- was 16
	fill_ratio = 0.0065,
	biomes = {"default:desert"},
	decoration = "default:dry_shrub",
})


end

--
-- Register blob ore
--

function default.register_blobs()
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:sand",
		wherein          = {"default:stone"},
		clust_scarcity   = 24*24*24,
		clust_size       = 7,
		y_min            = -63,
		y_max            = 4,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=5, y=5, z=5},
			seed=2316,
			octaves=1,
			persist=0.5
		},
	})

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:dirt",
		wherein          = {"default:stone"},
		clust_scarcity   = 24*24*24,
		clust_size       = 7,
		y_min            = -33,
		y_max            = 31000,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=5, y=5, z=5},
			seed=17676,
			octaves=1,
			persist=0.5
		},
	})

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:gravel",
		wherein          = {"default:stone"},
		clust_scarcity   = 24*24*24,
		clust_size       = 9,
		y_min            = -31000,
		y_max            = 31000,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=5, y=5, z=5},
			seed=766,
			octaves=1,
			persist=0.5
		},
	})

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "default:clay",
		wherein          = {"default:sand"},
		clust_scarcity   = 24*24*24,
		clust_size       = 7,
		y_min            = -10,
		y_max            = 0,
		noise_threshold = 0,
		noise_params     = {
			offset=0.35,
			scale=0.2,
			spread={x=10, y=5, z=10},
			seed=-256,
			octaves=1,
			persist=0.5
		},
	})

end
--
--
--
--
-- Detect mapgen and select suitable biome code
--
local mg_name = minetest.get_mapgen_setting("mg_name")
if mg_name == "v5" then
	default.register_biomes()
	default.register_blobs()
	default.register_ores()
elseif mg_name == "v6" then
	minetest.register_on_generated(default.mgv6_ongen)
	default.register_ores()
elseif mg_name == "v7" then
	default.register_biomes()
	default.register_decorations()
	default.register_blobs()
	default.register_ores()
end
