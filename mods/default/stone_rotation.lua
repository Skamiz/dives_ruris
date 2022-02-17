-- randomly rotate stone on on world generation
local c_stone = minetest.get_content_id("default:stone")
local c_desert_stone = minetest.get_content_id("default:desert_stone")

local data = {}
local param2_data = {}

minetest.register_on_generated(function(minp, maxp, blockseed)
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
	vm:get_data(data)
	vm:get_param2_data(param2_data)

	for i in area:iterp(minp, maxp) do
		if data[i] == c_stone or data[i] == c_desert_stone then
			param2_data[i] = math.random(24) - 1
		end
	end

	vm:set_param2_data(param2_data)
	vm:write_to_map()
end)
