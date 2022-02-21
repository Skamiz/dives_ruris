-- randomly rotate stone on on world generation

-- preparing nodes

 if minetest.settings:get_bool("dives_ruris.texture_randomization", true) then

	minetest.override_item("default:stone", {
		tiles = {
			{name = "default_stone_1.png", align_style = "world"},
			{name = "default_stone_2.png", align_style = "world"},
			{name = "default_stone_3.png", align_style = "world"},
			{name = "default_stone_4.png", align_style = "world"},
			{name = "default_stone_5.png", align_style = "world"},
			{name = "default_stone_6.png", align_style = "world"},
		},
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})
	minetest.override_item("default:desert_stone", {
		tiles = {
			{name = "default_desert_stone_1.png", align_style = "world"},
			{name = "default_desert_stone_2.png", align_style = "world"},
			{name = "default_desert_stone_3.png", align_style = "world"},
			{name = "default_desert_stone_4.png", align_style = "world"},
			{name = "default_desert_stone_5.png", align_style = "world"},
			{name = "default_desert_stone_6.png", align_style = "world"},
		},
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})

	minetest.override_item("default:gravel", {
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})
	minetest.override_item("default:desert_gravel", {
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})

	minetest.override_item("default:dirt", {
		tiles = {
			{name = "default_dirt_1.png"},
			{name = "default_dirt_2.png"},
			{name = "default_dirt_3.png"},
			{name = "default_dirt_4.png"},
			{name = "default_dirt_5.png"},
			{name = "default_dirt_6.png"},
		},
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})
	minetest.override_item("default:dirt_med", {
		tiles = {
			{name = "default_dirt_med_1.png"},
			{name = "default_dirt_med_2.png"},
			{name = "default_dirt_med_3.png"},
			{name = "default_dirt_med_4.png"},
			{name = "default_dirt_med_5.png"},
			{name = "default_dirt_med_6.png"},
		},
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})
	minetest.override_item("default:dirt_deep", {
		tiles = {
			{name = "default_dirt_deep_1.png"},
			{name = "default_dirt_deep_2.png"},
			{name = "default_dirt_deep_3.png"},
			{name = "default_dirt_deep_4.png"},
			{name = "default_dirt_deep_5.png"},
			{name = "default_dirt_deep_6.png"},
		},
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})
	minetest.override_item("default:dirt_jungle", {
		tiles = {
			{name = "default_dirt_jungle_1.png"},
			{name = "default_dirt_jungle_2.png"},
			{name = "default_dirt_jungle_3.png"},
			{name = "default_dirt_jungle_4.png"},
			{name = "default_dirt_jungle_5.png"},
			{name = "default_dirt_jungle_6.png"},
		},
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 23))
		end,
	})

	minetest.override_item("default:dirt_with_grass", {
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 3))
		end,
	})
	minetest.override_item("default:dirt_med_with_grass", {
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 3))
		end,
	})
	minetest.override_item("default:dirt_deep_with_grass", {
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 3))
		end,
	})
	minetest.override_item("default:dirt_jungle_with_grass", {
		paramtype2 = "facedir",
		on_place = function(itemstack, placer, pointed_thing)
			return minetest.item_place(itemstack, placer, pointed_thing, math.random(0, 3))
		end,
	})
	
end


-- rotating them when generated
local c_stone = minetest.get_content_id("default:stone")
local c_desert_stone = minetest.get_content_id("default:desert_stone")
local c_dirt = minetest.get_content_id("default:dirt")

local rotation_24 = {
	"default:stone",
	"default:desert_stone",
	"default:dirt",
	"default:dirt_med",
	"default:dirt_deep",
	"default:dirt_jungle",
	"default:gravel",
	"default:desert_gravel",
}
local rot_24 = {}

local rotation_4 = {
	"default:dirt_with_grass",
	"default:dirt_med_with_grass",
	"default:dirt_deep_with_grass",
	"default:dirt_jungle_with_grass",
}
local rot_4 = {}

for k, v in pairs(rotation_24) do
	rot_24[minetest.get_content_id(v)] = true
end

for k, v in pairs(rotation_4) do
	rot_4[minetest.get_content_id(v)] = true
end

local data = {}
local param2_data = {}

minetest.register_on_generated(function(minp, maxp, blockseed)
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
	vm:get_data(data)
	vm:get_param2_data(param2_data)

	for i in area:iterp(minp, maxp) do
		if rot_24[data[i]] then
			param2_data[i] = math.random(0, 23)
		end
		if rot_4[data[i]] then
			param2_data[i] = math.random(0, 3)
		end
	end

	vm:set_param2_data(param2_data)
	vm:write_to_map()
end)
