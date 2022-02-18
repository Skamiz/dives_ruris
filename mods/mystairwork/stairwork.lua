
local function place_stair(itemstack, placer, pointed_thing)
	-- if pointed_thing.type ~= "node" then
	-- 	return itemstack
	-- end

	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	local param2 = 0

	local placer_pos = placer:get_pos()
	if placer_pos then
		local dir = {
			x = p1.x - placer_pos.x,
			y = p1.y - placer_pos.y,
			z = p1.z - placer_pos.z
		}
		param2 = minetest.dir_to_facedir(dir)
	end

	if p0.y-1 == p1.y then
		param2 = param2 + 20
		if param2 == 21 then
			param2 = 23
		elseif param2 == 23 then
			param2 = 21
		end
	end

	return minetest.item_place(itemstack, placer, pointed_thing, param2)
end

 mystairwork.registered_materials = {}

function mystairwork.register_all(desc, image, groups, craft, sounds)
	local def = minetest.registered_nodes[craft]
	if not def then
		minetest.log("warning", "Stair material: '" .. craft .. "' is not registered at this time.")
	end

	mystairwork.registered_materials[craft] = {
		material = craft,
		material_name = string.gsub(craft, ":", "_"),
		description = desc or def.description or "missing description",
		tiles = def.tiles,
		groups = nil,
		sounds = sounds or def.sounds or default.node_sound_defaults(),
	}

	if desc ~= def.description then
		minetest.log("warning", "Stair description: '" .. desc .. "' does not match material description: " .. def.description .. "'")
	end

	-- local im = def.tiles[1]
	-- if type(im) == "table" then
	-- 	im = im.name
	-- end
	-- if image ~= im then
	-- 	minetest.log("warning", "Stair image: '" .. image .. "' does not match material image: " .. im .. "'")
	-- end

	local material_name = string.gsub(craft, ":", "_")
	local tiles = nil
	if image then
		tiles = {image}
	else
		tiles = def.tiles
	end

	minetest.register_node("mystairwork:stair_"..material_name, {
		description = desc.." Stair",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			}
		},
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	minetest.register_node("mystairwork:stair_out_"..material_name, {
		description = desc.." Stair Edge Out",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	minetest.register_node("mystairwork:stair_inn_"..material_name, {
		description = desc.."Stair Edge Inn",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = false,
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	minetest.register_node("mystairwork:stair_pillar_"..material_name, {
		description = desc.."Stair Pillar",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0, 0.5, 0.5},
			},
		},
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	minetest.register_node("mystairwork:stair_slab_"..material_name, {
		description = desc.." Slab",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local n0 = minetest.get_node(p0)
			local n1 = minetest.get_node(p1)
			local param2 = 0

			local n0_is_upside_down = (n0.name == "mystairwork:stair_slab_" .. material_name and
			n0.param2 >= 20)

			if n0.name == "mystairwork:stair_slab_" .. material_name and not n0_is_upside_down and p0.y+1 == p1.y then
				slabpos = p0
				slabnode = n0
			elseif n1.name == "mystairwork:stair_slab_" .. material_name then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				fakestack:set_count(itemstack:get_count())

				pointed_thing.above = slabpos
				local success
				fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if success then
					itemstack:set_count(fakestack:get_count())
					-- Else put old node back
				else
					minetest.set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Upside down slabs
			if p0.y-1 == p1.y then
				-- Turn into full block if pointing at a existing slab
				if n0_is_upside_down  then
					-- Remove the slab at the position of the slab
					minetest.remove_node(p0)
					-- Make a fake stack of a single item and try to place it
					local fakestack = ItemStack(recipeitem)
					fakestack:set_count(itemstack:get_count())

					pointed_thing.above = p0
					local success
					fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
					-- If the item was taken from the fake stack, decrement original
					if success then
						itemstack:set_count(fakestack:get_count())
						-- Else put old node back
					else
						minetest.set_node(p0, n0)
					end
					return itemstack
				end

				-- Place upside down slab
				param2 = 20
			end

			-- If pointing at the side of a upside down slab
			if n0_is_upside_down and p0.y+1 ~= p1.y then
				param2 = 20
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	-- Stair Sub
	minetest.register_node("mystairwork:stair_sub_"..material_name, {
		description = desc.." Stair Substructure",
		drawtype = "nodebox",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0.4375, 0.5, 0.4375, 0.5},
				{-0.5, -0.4375, 0.375, 0.5, 0.4375, 0.4375},
				{-0.5, -0.375, 0.3125, 0.5, 0.4375, 0.375},
				{-0.5, -0.3125, 0.25, 0.5, 0.4375, 0.3125},
				{-0.5, -0.25, 0.1875, 0.5, 0.4375, 0.25},
				{-0.5, -0.1875, 0.125, 0.5, 0.4375, 0.1875},
				{-0.5, -0.125, 0.0625, 0.5, 0.4375, 0.125},
				{-0.5, -0.0625, 0, 0.5, 0.4375, 0.0625},
				{-0.5, 0, -0.0625, 0.5, 0.4375, 0},
				{-0.5, 0.0625, -0.125, 0.5, 0.4375, -0.0625},
				{-0.5, 0.125, -0.1875, 0.5, 0.4375, -0.125},
				{-0.5, 0.1875, -0.25, 0.5, 0.4375, -0.1875},
				{-0.5, 0.25, -0.3125, 0.5, 0.4375, -0.25},
				{-0.5, 0.3125, -0.375, 0.5, 0.4375, -0.3125},
				{-0.5, 0.375, -0.4375, 0.5, 0.4375, -0.375},
			},
		},
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	-- Ramps
	--(thanks to VanessaE(homedecor) selectionsbox was a problem
	local slope_cbox = {
		type = "fixed",
		fixed = {
			{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
			{-0.5,     0,     0, 0.5,  0.25, 0.5},
			{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
		}
	}

	local ocorner_cbox = {
		type = "fixed",
		fixed = {
			{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
			{-0.5,     0,     0,     0,  0.25, 0.5},
			{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
		}
	}

	local icorner_cbox = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			{-0.5, -0.25, -0.25, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.25, 0.5},
			{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},

			{-0.5, -0.25, -0.5, 0.25, 0, 0.5},
			{-0.5, 0, -0.5, 0, 0.25, 0.5},
			{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5},
		}
	}
	-- Ramp

	minetest.register_node("mystairwork:ramp_"..material_name, {
		description = desc.." Ramp",
		drawtype = "mesh",
		mesh = "moreblocks_slope.obj",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		selection_box = slope_cbox,
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0.375, 0.5, 0.4375, 0.4375},
				{-0.5, -0.5, 0.3125, 0.5, 0.375, 0.375},
				{-0.5, -0.5, 0.25, 0.5, 0.3125, 0.3125},
				{-0.5, -0.5, 0.1875, 0.5, 0.25, 0.25},
				{-0.5, -0.5, 0.125, 0.5, 0.1875, 0.1875},
				{-0.5, -0.5, 0.0625, 0.5, 0.125, 0.125},
				{-0.5, -0.5, 0, 0.5, 0.0625, 0.0625},
				{-0.5, -0.5, -0.0625, 0.5, 0, 0},
				{-0.5, -0.5, -0.125, 0.5, -0.0625, -0.0625},
				{-0.5, -0.5, -0.1875, 0.5, -0.125, -0.125},
				{-0.5, -0.5, -0.25, 0.5, -0.1875, -0.1875},
				{-0.5, -0.5, -0.3125, 0.5, -0.25, -0.25},
				{-0.5, -0.5, -0.375, 0.5, -0.3125, -0.3125},
				{-0.5, -0.5, -0.4375, 0.5, -0.375, -0.375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
			},
		},

		groups = groups,
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	-- Outer Ramp

	minetest.register_node("mystairwork:ramp_out_"..material_name, {
		description = desc.." Ramp Out",
		drawtype = "mesh",
		mesh = "moreblocks_slope_outer.obj",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = false,
		selection_box = ocorner_cbox,
		collision_box = ocorner_cbox,
		groups = groups,
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})

	-- Inner Ramp

	minetest.register_node("mystairwork:ramp_inn_"..material_name, {
		description = desc.." Ramp Inn",
		drawtype = "mesh",
		mesh = "moreblocks_slope_inner.obj",
		tiles = tiles,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = false,
		is_ground_content = false,
		groups = groups,
		selection_box = icorner_cbox,
		collision_box = icorner_cbox,
		on_place = place_stair,
		sounds = sounds,
		-- on_place = minetest.rotate_node,
	})
end
