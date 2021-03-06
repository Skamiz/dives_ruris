minetest.override_item("default:dirt", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.override_item("default:dirt_with_grass", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_with_grass",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.register_node("farming:soil", {
	description = "Soil",
	tiles = {"default_dirt.png^farming_soil.png", "default_dirt.png"},
	drop = "default:dirt",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=2, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.register_node("farming:soil_wet", {
	description = "Wet Soil",
	tiles = {"default_dirt.png^farming_soil_wet.png", "default_dirt.png^farming_soil_wet_side.png"},
	drop = "default:dirt",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=3, wet = 1, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})
--
-- Deepforest
--
minetest.override_item("default:dirt_deep", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_deep",
		dry = "farming:soil_deep",
		wet = "farming:soil_deep_wet"
	}
})

minetest.override_item("default:dirt_deep_with_grass", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_deep_with_grass",
		dry = "farming:soil_deep",
		wet = "farming:soil_deep_wet"
	}
})

minetest.register_node("farming:soil_deep", {
	description = "Deepforest Soil",
	tiles = {"default_dirt_deep.png^farming_soil.png", "default_dirt_deep.png"},
	drop = "default:dirt_deep",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=2, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt_deep",
		dry = "farming:soil_deep",
		wet = "farming:soil_deep_wet"
	}
})

minetest.register_node("farming:soil_deep_wet", {
	description = "Wet Deepforest Soil",
	tiles = {"default_dirt_deep.png^farming_soil_wet.png", "default_dirt_deep.png^farming_soil_wet_side.png"},
	drop = "default:dirt_deep",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=3, wet = 1, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt_deep",
		dry = "farming:soil_deep",
		wet = "farming:soil_deep_wet"
	}
})

--
-- jungle
--

minetest.override_item("default:dirt_jungle", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_jungle",
		dry = "farming:soil_jungle",
		wet = "farming:soil_jungle_wet"
	}
})

minetest.override_item("default:dirt_jungle_with_grass", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_jungle_with_grass",
		dry = "farming:soil_jungle",
		wet = "farming:soil_jungle_wet"
	}
})

minetest.register_node("farming:soil_jungle", {
	description = "Jungle Soil",
	tiles = {"default_dirt_jungle.png^farming_soil.png", "default_dirt_jungle.png"},
	drop = "default:dirt_jungle",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=2, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt_jungle",
		dry = "farming:soil_jungle",
		wet = "farming:soil_jungle_wet"
	}
})

minetest.register_node("farming:soil_jungle_wet", {
	description = "Wet Jungle Soil",
	tiles = {"default_dirt_jungle.png^farming_soil_wet.png", "default_dirt_jungle.png^farming_soil_wet_side.png"},
	drop = "default:dirt_jungle",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=3, wet = 1, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt_jungle",
		dry = "farming:soil_jungle",
		wet = "farming:soil_jungle_wet"
	}
})

--
-- Mediterran
--

minetest.override_item("default:dirt_med", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_med",
		dry = "farming:soil_med",
		wet = "farming:soil_med_wet"
	}
})

minetest.override_item("default:dirt_med_with_grass", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_med_with_grass",
		dry = "farming:soil_med",
		wet = "farming:soil_med_wet"
	}
})

minetest.register_node("farming:soil_med", {
	description = "Mediterran Soil",
	tiles = {"default_dirt_med.png^farming_soil.png", "default_dirt_med.png"},
	drop = "default:dirt_med",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=2, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt_med",
		dry = "farming:soil_med",
		wet = "farming:soil_med_wet"
	}
})

minetest.register_node("farming:soil_med_wet", {
	description = "Wet Mediterran Soil",
	tiles = {"default_dirt_med.png^farming_soil_wet.png", "default_dirt_med.png^farming_soil_wet_side.png"},
	drop = "default:dirt_med",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=3, wet = 1, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt_med",
		dry = "farming:soil_med",
		wet = "farming:soil_med_wet"
	}
})

--
-- Desert
--
--[[
minetest.override_item("default:desert_sand", {
	groups = {crumbly=3, falling_node=1, sand=1, soil = 1},
	soil = {
		base = "default:desert_sand",
		dry = "farming:desert_sand_soil",
		wet = "farming:desert_sand_soil_wet"
	}
})
minetest.register_node("farming:desert_sand_soil", {
	description = "Desert Sand Soil",
	drop = "default:desert_sand",
	tiles = {"farming_desert_sand_soil.png", "default_desert_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory = 1, falling_node=1, sand=1, soil = 2, desert = 1, field = 1},
	sounds = default.node_sound_sand_defaults(),
	soil = {
		base = "default:desert_sand",
		dry = "farming:desert_sand_soil",
		wet = "farming:desert_sand_soil_wet"
	}
})

minetest.register_node("farming:desert_sand_soil_wet", {
	description = "Wet Desert Sand Soil",
	drop = "default:desert_sand",
	tiles = {"farming_desert_sand_soil_wet.png", "farming_desert_sand_soil_wet_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, not_in_creative_inventory=1, soil=3, wet = 1, desert = 1, field = 1},
	sounds = default.node_sound_sand_defaults(),
	soil = {
		base = "default:desert_sand",
		dry = "farming:desert_sand_soil",
		wet = "farming:desert_sand_soil_wet"
	}
})

]]

minetest.register_node("farming:straw", {
	description = "Straw",
	tiles = {"farming_straw.png"},
	is_ground_content = false,
	groups = {snappy=3, flammable=4},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_abm({
	label = "Wetten/dry farm land",
	nodenames = {"group:field"},
	interval = 15,
	chance = 4,
	action = function(pos, node)
		local n_def = minetest.registered_nodes[node.name] or nil
		local wet = n_def.soil.wet or nil
		local base = n_def.soil.base or nil
		local dry = n_def.soil.dry or nil
		if not n_def or not n_def.soil or not wet or not base or not dry then
			return
		end

		pos.y = pos.y + 1
		local nn = minetest.get_node_or_nil(pos)
		if not nn or not nn.name then
			return
		end
		local nn_def = minetest.registered_nodes[nn.name] or nil
		pos.y = pos.y - 1

		if nn_def and nn_def.walkable and minetest.get_item_group(nn.name, "plant") == 0 then
			minetest.set_node(pos, {name = base})
			return
		end
		-- check if there is water nearby
		local wet_lvl = minetest.get_item_group(node.name, "wet")
		if minetest.find_node_near(pos, 3, {"group:water"}) then
			-- if it is dry soil and not base node, turn it into wet soil
			if wet_lvl == 0 then
				minetest.set_node(pos, {name = wet})
			end
		else
			-- only turn back if there are no unloaded blocks (and therefore
			-- possible water sources) nearby
			if not minetest.find_node_near(pos, 3, {"ignore"}) then
				-- turn it back into base if it is already dry
				if wet_lvl == 0 then
					-- only turn it back if there is no plant/seed on top of it
					if minetest.get_item_group(nn.name, "plant") == 0 and minetest.get_item_group(nn.name, "seed") == 0 then
						minetest.set_node(pos, {name = base})
					end

				-- if its wet turn it back into dry soil
				elseif wet_lvl == 1 then
					minetest.set_node(pos, {name = dry})
				end
			end
		end
	end,
})


for i = 1, 5 do
	minetest.override_item("default:grass_"..i, {drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 5},
			{items = {'default:grass_1'}},
		}
	}})
end

minetest.override_item("default:junglegrass", {drop = {
	max_items = 1,
	items = {
		{items = {'farming:seed_cotton'},rarity = 8},
		{items = {'default:junglegrass'}},
	}
}})

minetest.override_item("default:junglegrass2", {drop = {
	max_items = 1,
	items = {
		{items = {'farming:seed_cotton'},rarity = 8},
		{items = {'default:junglegrass2'}},
	}
}})
