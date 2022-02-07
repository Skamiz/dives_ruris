-- Wear out hoes, place soil
-- TODO Ignore group:flower
farming.hoe_on_use = function(itemstack, user, pointed_thing, uses)
	local pt = pointed_thing
	-- check if pointing at a node
	if not pt then
		return
	end
	if pt.type ~= "node" then
		return
	end

	local under = minetest.get_node(pt.under)
	local p = {x=pt.under.x, y=pt.under.y+1, z=pt.under.z}
	local above = minetest.get_node(p)

	-- return if any of the nodes is not registered
	if not minetest.registered_nodes[under.name] then
		return
	end
	if not minetest.registered_nodes[above.name] then
		return
	end

	-- check if the node above the pointed thing is air
	if above.name ~= "air" then
		return
	end

	-- check if pointing at soil
	if minetest.get_item_group(under.name, "soil") ~= 1 then
		return
	end

	-- check if (wet) soil defined
	local regN = minetest.registered_nodes
	if regN[under.name].soil == nil or regN[under.name].soil.wet == nil or regN[under.name].soil.dry == nil then
		return
	end

	-- turn the node into soil, wear out item and play sound
	minetest.set_node(pt.under, {name = regN[under.name].soil.dry})
	minetest.sound_play("default_dig_crumbly", {
		pos = pt.under,
		gain = 0.5,
	})

	-- worms for fishing
	if math.random(1, 100) < 25 then
            local inv = user:get_inventory()
			if inv:room_for_item("main", {name="default:worm", count=1, wear=0, metadata=""}) then
 				inv:add_item("main", {name="default:worm", count=1, wear=0, metadata=""})
 			end
 	end
    --end worm

	if not minetest.settings:get_bool("creative_mode") then
		itemstack:add_wear(65535/(uses-1))
	end
	return itemstack
end

-- Register new hoes
farming.register_hoe = function(name, def)
	-- Check for : prefix (register new hoes in your mod's namespace)
	if name:sub(1,1) ~= ":" then
		name = ":" .. name
	end
	-- Check def table
	if def.description == nil then
		def.description = "Hoe"
	end
	if def.inventory_image == nil then
		def.inventory_image = "unknown_item.png"
	end
	if def.recipe == nil then
		def.recipe = {
			{"air","air",""},
			{"","group:stick",""},
			{"","group:stick",""}
		}
	end
	if def.max_uses == nil then
		def.max_uses = 30
	end
	-- Register the tool
	minetest.register_tool(name, {
		description = def.description,
		inventory_image = def.inventory_image,
		on_use = function(itemstack, user, pointed_thing)
			return farming.hoe_on_use(itemstack, user, pointed_thing, def.max_uses)
		end
	})
	-- Register its recipe
	if def.material == nil then
		minetest.register_craft({
			output = name:sub(2),
			recipe = def.recipe
		})
	else
		minetest.register_craft({
			output = name:sub(2),
			recipe = {
				{def.material, def.material, ""},
				{"", "group:stick", ""},
				{"", "group:stick", ""}
			}
		})
		-- Reverse Recipe
		minetest.register_craft({
			output = name:sub(2),
			recipe = {
				{"", def.material, def.material},
				{"", "group:stick", ""},
				{"", "group:stick", ""}
			}
		})
	end
end

-- Seed placement
farming.place_seed = function(itemstack, placer, pointed_thing, plantname)
	local pt = pointed_thing
	-- check if pointing at a node
	if not pt then
		return
	end
	if pt.type ~= "node" then
		return
	end

	local under = minetest.get_node(pt.under)
	local above = minetest.get_node(pt.above)

	-- return if any of the nodes is not registered
	if not minetest.registered_nodes[under.name] then
		return
	end
	if not minetest.registered_nodes[above.name] then
		return
	end

	-- check if pointing at the top of the node
	if pt.above.y ~= pt.under.y+1 then
		return
	end

	-- check if you can replace the node above the pointed node
	if not minetest.registered_nodes[above.name].buildable_to then
		return
	end

	-- check if pointing at soil
	if minetest.get_item_group(under.name, "soil") < 2 then
		return
	end

	-- add the node and remove 1 item from the itemstack
	minetest.add_node(pt.above, {name = plantname, param2 = 1})
	if not minetest.settings:get_bool("creative_mode") then
		itemstack:take_item()
	end
	return itemstack
end

-- Register plants
farming.register_plant = function(name, def)
	local mname = name:split(":")[1]
	local pname = name:split(":")[2]

	-- Check def table
	if not def.description then
		def.description = "Seed"
	end
	if not def.inventory_image then
		def.inventory_image = "unknown_item.png"
	end
	if not def.steps then
		return nil
	end
	if not def.minlight then
		def.minlight = 1
	end
	if not def.maxlight then
		def.maxlight = 14
	end
	if not def.fertility then
		def.fertility = {}
	end

	-- Register seed
	local g = {seed = 1, snappy = 3, attached_node = 1}
	for k, v in pairs(def.fertility) do
		g[v] = 1
	end
	minetest.register_node(":" .. mname .. ":seed_" .. pname, {
		description = def.description,
		tiles = {def.inventory_image},
		inventory_image = def.inventory_image,
		wield_image = def.inventory_image,
		drawtype = "signlike",
		groups = g,
		paramtype = "light",
		paramtype2 = "wallmounted",
		walkable = false,
		sunlight_propagates = true,
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
		},
		fertility = def.fertility,
		on_place = function(itemstack, placer, pointed_thing)
			return farming.place_seed(itemstack, placer, pointed_thing, mname .. ":seed_" .. pname)
		end
	})

	-- Register harvest
	minetest.register_craftitem(":" .. mname .. ":" .. pname, {
		description = pname:gsub("^%l", string.upper),
		inventory_image = mname .. "_" .. pname .. ".png",
		on_use = minetest.item_eat(0),
	})

	-- Register growing steps
	for i=1,def.steps do
		local drop = {
			items = {
				{items = {mname .. ":seed_" .. pname}, rarity = 4 - i},
				{items = {mname .. ":seed_" .. pname}, rarity = 8 - i * 2},
				{items = {mname .. ":" .. pname}, rarity = 4 - i},
				{items = {mname .. ":" .. pname}, rarity = 6 - i},
				{items = {mname .. ":" .. pname}, rarity= 8 - i * 2},
				{items = {mname .. ":" .. pname}, rarity= 9 - i * 2},
			}
		}
		local nodegroups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory = 1, attached_node = 1}
		nodegroups[pname] = i
		if pname == "corn" then
		   minetest.register_node(mname .. ":" .. pname .. "_" .. i, {
			drawtype = "plantlike",
			visual_scale = 1.8,
			waving = 1,
			tiles = {mname .. "_" .. pname .. "_" .. i .. ".png"},
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			drop = drop,
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
			groups = nodegroups,
			sounds = default.node_sound_leaves_defaults(),
		})
		elseif pname == "beens" then
		   minetest.register_node(mname .. ":" .. pname .. "_" .. i, {
			drawtype = "plantlike",
			visual_scale = 1.4,
			waving = 1,
			tiles = {mname .. "_" .. pname .. "_" .. i .. ".png"},
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			drop = drop,
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
			groups = nodegroups,
			sounds = default.node_sound_leaves_defaults(),
		})
		else
		minetest.register_node(mname .. ":" .. pname .. "_" .. i, {
			drawtype = "plantlike",
			tiles = {mname .. "_" .. pname .. "_" .. i .. ".png"},
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			drop = drop,
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
			groups = nodegroups,
			sounds = default.node_sound_leaves_defaults(),
		})
		end
	end

	-- Growing ABM
	minetest.register_abm({
		label = "Grow plant: " .. pname,
		nodenames = {"group:" .. pname, "group:seed"},
		neighbors = {"group:soil"},
		interval = 93,
		chance = 12,
		action = function(pos, node)
			local plant_height = minetest.get_item_group(node.name, pname)

			-- return if already full grown
			if plant_height == def.steps then
				return
			end

			local node_def = minetest.registered_items[node.name] or nil

			-- grow seed
			if minetest.get_item_group(node.name, "seed") and node_def.fertility then
				local can_grow = false
				local soil_node = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
				if not soil_node then
					return
				end
				for _, v in pairs(node_def.fertility) do
					if minetest.get_item_group(soil_node.name, v) ~= 0 then
						can_grow = true
					end
				end
				if can_grow then
					minetest.set_node(pos, {name = node.name:gsub("seed_", "") .. "_1"})
				end
				return
			end

			-- check if on wet soil
			pos.y = pos.y - 1
			local n = minetest.get_node(pos)
			if minetest.get_item_group(n.name, "soil") < 3 then
				return
			end
			pos.y = pos.y + 1

			-- check light
			local ll = minetest.get_node_light(pos)

			if not ll or ll < def.minlight or ll > def.maxlight then
				return
			end

			-- grow
			minetest.set_node(pos, {name = mname .. ":" .. pname .. "_" .. plant_height + 1})
		end
	})

	-- Return
	local r = {
		seed = mname .. ":seed_" .. pname,
		harvest = mname .. ":" .. pname
	}
	return r
end

--[[
minetest.register_node(":farming:corn_1", {
			drawtype = "plantlike",
			visual_scale = 2.0,
			waving = 1,
			tiles = {"farming_corn_1.png"},
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			drop = {
			items = {
				{items = {"farming:corn"}, rarity = 3},
				{items = {"farming:corn"}, rarity= 4},
				{items = {"farming:seed_corn"}, rarity = 3},
				{items = {"farming:seed_corn"}, rarity = 4},
			    }
		    },
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
			groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory = 1, attached_node = 1},
			sounds = default.node_sound_leaves_defaults(),
		})

minetest.register_node(":farming:corn_2", {
			drawtype = "plantlike",
			visual_scale = 2.0,
			waving = 1,
			tiles = {"farming_corn_2.png"},
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			drop = {
			items = {
				{items = {"farming:corn"}, rarity = 2},
				{items = {"farming:corn"}, rarity= 3},
				{items = {"farming:seed_corn"}, rarity = 2},
				{items = {"farming:seed_corn"}, rarity = 3},
			    }
		    },
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
			groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory = 1, attached_node = 1},
			sounds = default.node_sound_leaves_defaults(),
		})

minetest.register_node(":farming:corn_3", {
			drawtype = "plantlike",
			visual_scale = 2.0,
			waving = 1,
			tiles = {"farming_corn_3.png"},
			paramtype = "light",
			walkable = false,
			buildable_to = true,
			is_ground_content = true,
			drop = {
			items = {
				{items = {"farming:corn"}, rarity = 1},
				{items = {"farming:corn"}, rarity= 2},
				{items = {"farming:seed_corn"}, rarity = 1},
				{items = {"farming:seed_corn"}, rarity = 2},
			    }
		    },
			selection_box = {
				type = "fixed",
				fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
			},
			groups = {snappy = 3, flammable = 2, plant = 1, not_in_creative_inventory = 1, attached_node = 1},
			sounds = default.node_sound_leaves_defaults(),
		})
		]]
