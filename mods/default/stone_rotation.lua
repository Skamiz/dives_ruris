-- randomly rotate stone on on world generation
local c_stone = minetest.get_content_id("default:stone")
local c_wood = minetest.get_content_id("default:wood")



local side_lenght = 80
local chunk_size = {x = 80, y = 80, z = 80}


local data = {}
local param2_data = {}

local function rotate_stone(minp, maxp)
	local vm, emin, emax = minetest.get_voxel_manip(minp, maxp)
	vm:get_data(data)
	vm:get_param2_data(param2_data)

	local ni = 0
	for z = minp.z, maxp.z do
		for y = minp.y, maxp.y do
			for x = minp.x, maxp.x do
				ni = ni + 1

				if data[ni] == c_stone then
					param2_data[ni] = math.random(24) - 1
					-- data[ni] = c_wood
				end


			end
		end
	end

	vm:set_param2_data(param2_data)
	vm:set_data(data)
	-- vm:update_liquids()
	-- vm:calc_lighting()
	vm:write_to_map()
end

minetest.register_on_generated(function(minp, maxp, blockseed)
	minetest.after(1, rotate_stone, minp, maxp)

	-- local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	-- vm:get_data(data)
	-- vm:get_param2_data(param2_data)
	--
	-- ni = 0
	-- for z = minp.z, maxp.z do
	-- 	for y = minp.y, maxp.y do
	-- 		for x = minp.x, maxp.x do
	-- 			ni = ni + 1
	--
	-- 			if data[ni] == c_stone then
	-- 				param2_data[ni] = math.random(24) - 1
	-- 				data[ni] = c_wood
	-- 			end
	--
	--
	-- 		end
	-- 	end
	-- end
	--
	-- vm:set_param2_data(param2_data)
	-- vm:set_data(data)
	-- -- vm:update_liquids()
	-- -- vm:calc_lighting()
	-- vm:write_to_map()
end)
