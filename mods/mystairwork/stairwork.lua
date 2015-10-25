
function mystairwork.register_all(mat, desc, image, groups, craft, sounds)

minetest.register_node("mystairwork:stair_"..mat, {
	description = desc.." Stair",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5}, 
		}
	},
	on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:stair_" .. mat.."upside_down", {
		replace_name = ":mystairwork:stair_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:stair_out_"..mat, {
	description = desc.." Stair Edge Out",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0},
			   {-0.5, -0.5, 0, 0, 0.5, 0.5},
			   {0, -0.5, 0, 0.5, 0, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:stair_out_" .. mat.."upside_down", {
		replace_name = ":mystairwork:stair_out_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:stair_inn_"..mat, {
	description = desc.."Stair Edge Inn",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			  {-0.5, -0.5, -0.5, 0, 0.5, 0},
			  {0, -0.5, -0.5, 0.5, 0, 0},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:stair_inn_" .. mat.."upside_down", {
		replace_name = ":mystairwork:stair_inn_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:stair_pillar_"..mat, {
	description = desc.."Stair Pillar",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:stair_pillar_" .. mat.."upside_down", {
		replace_name = ":mystairwork:stair_pillar_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:stair_slab_"..mat, {
	description = desc.."Slap",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
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

			local n0_is_upside_down = (n0.name == "mystairwork:stair_slab_" .. mat and
					n0.param2 >= 20)

			if n0.name == "mystairwork:stair_slab_" .. mat and not n0_is_upside_down and p0.y+1 == p1.y then
				slabpos = p0
				slabnode = n0
			elseif n1.name == "mystairwork:stair_slab_" .. mat then
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
minetest.register_node(":mystairwork:stair_slab_" .. mat.."upside_down", {
		replace_name = ":mystairwork:stair_slab_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:stair_sub_"..mat, {
	description = desc.." Stair Substructure",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
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
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:stair_sub_" .. mat.."upside_down", {
		replace_name = ":mystairwork:stair_sub_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:ramp_"..mat, {
	description = desc.." Ramp",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.375},			
			{-0.5, -0.4375, -0.4375, 0.5, -0.375, -0.3125},			
			{-0.5, -0.375, -0.375, 0.5, -0.3125, -0.25}, 
			{-0.5, -0.3125, -0.3125, 0.5, -0.25, -0.1875},
			{-0.5, -0.25, -0.25, 0.5, -0.1875, -0.125}, 			
			{-0.5, -0.1875, -0.1875, 0.5, -0.125, -0.0625},
			{-0.5, -0.125, -0.125, 0.5, -0.0625, 0}, 			
			{-0.5, -0.0625, -0.0625, 0.5, 0, 0.0625},
			{-0.5, 0, 0, 0.5, 0.0625, 0.125},
			{-0.5, 0.0625, 0.0625, 0.5, 0.125, 0.1875},
			{-0.5, 0.125, 0.125, 0.5, 0.1875, 0.25}, 
			{-0.5, 0.1875, 0.1875, 0.5, 0.25, 0.3125},			
			{-0.5, 0.25, 0.25, 0.5, 0.3125, 0.375}, 			
			{-0.5, 0.3125, 0.3125, 0.5, 0.375, 0.4375},			
			{-0.5, 0.375, 0.375, 0.5, 0.4375, 0.5}, 			
			{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:ramp_" .. mat.."upside_down", {
		replace_name = ":mystairwork:ramp_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:ramp_out_"..mat, {
	description = desc.." Ramp Out",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.4375, 0.4375, -0.375, -0.3125}, 			
			{-0.5, -0.375, -0.375, 0.375, -0.3125, -0.25}, 			
			{-0.5, -0.3125, -0.3125, 0.3125, -0.25, -0.1875}, 			
			{-0.5, -0.25, -0.25, 0.25, -0.1875, -0.125}, 			
			{-0.5, -0.1875, -0.1875, 0.1875, -0.125, -0.0625},			
			{-0.5, -0.125, -0.125, 0.125, -0.0625, 0}, 
			{-0.5, -0.0625, -0.0625, 0.0625, 0, 0.0625},
			{-0.5, 0, 0, 0, 0.0625, 0.125}, 			
			{-0.5, 0.0625, 0.0625, -0.0625, 0.125, 0.1875}, 			
			{-0.5, 0.125, 0.125, -0.125, 0.1875, 0.25}, 
			{-0.5, 0.1875, 0.1875, -0.1875, 0.25, 0.3125}, 
			{-0.5, 0.25, 0.25, -0.25, 0.3125, 0.375}, 			
			{-0.5, 0.3125, 0.3125, -0.3125, 0.375, 0.4375}, 
			{-0.5, 0.375, 0.375, -0.375, 0.4375, 0.5},
			{-0.5, 0.4375, 0.4375, -0.4375, 0.5, 0.5},		
			{0.375, -0.5, -0.375, 0.5, -0.4375, 0.5}, 
			{0.3125, -0.4375, -0.3125, 0.4375, -0.375, 0.5}, 
			{0.25, -0.375, -0.25, 0.375, -0.3125, 0.5}, 
			{0.1875, -0.3125, -0.1875, 0.3125, -0.25, 0.5}, 
			{0.125, -0.25, -0.1875, 0.25, -0.1875, 0.5}, 			
			{0.0625, -0.1875, -0.0625, 0.1875, -0.125, 0.5},
			{0, -0.125, 0, 0.125, -0.0625, 0.5}, 
			{-0.0625, -0.0625, 0.0625, 0.0625, 0, 0.5}, 
			{-0.125, 0, 0.125, 0, 0.0625, 0.5}, 			
			{-0.1875, 0.0625, 0.1875, -0.0625, 0.125, 0.5}, 			
			{-0.25, 0.125, 0.25, -0.125, 0.1875, 0.5},			
			{-0.3125, 0.1875, 0.3125, -0.1875, 0.25, 0.5}, 			
			{-0.375, 0.25, 0.375, -0.25, 0.3125, 0.5}, 
			{-0.5, 0.3125, 0.4375, -0.3125, 0.375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.375}, 
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:ramp_out_" .. mat.."upside_down", {
		replace_name = ":mystairwork:ramp_out_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:ramp_inn_"..mat, {
	description = desc.." Ramp Inn",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, -0.4375, -0.375},			
			{-0.5, -0.4375, -0.4375, -0.4375, -0.375, -0.3125},			
			{-0.5, -0.375, -0.375, -0.375, -0.3125, -0.25},
			{-0.5, -0.3125, -0.3125, -0.3125, -0.25, -0.1875},			
			{-0.5, -0.25, -0.25, -0.25, -0.1875, -0.125}, 			
			{-0.5, -0.1875, -0.1875, -0.1875, -0.125, -0.0625},			
			{-0.5, -0.125, -0.125, -0.125, -0.0625, 0},			
			{-0.5, -0.0625, -0.0625, -0.0625, 0, 0.0625},			
			{-0.5, 0, 0, 0, 0.0625, 0.125},
			{-0.5, 0.0625, 0.0625, 0.0625, 0.125, 0.1875},
			{-0.5, 0.125, 0.125, 0.125, 0.1875, 0.25},
			{-0.5, 0.1875, 0.1875, 0.1875, 0.25, 0.3125},			
			{-0.5, 0.25, 0.25, 0.25, 0.3125, 0.375},			
			{-0.5, 0.3125, 0.3125, 0.3125, 0.375, 0.4375},			
			{-0.5, 0.375, 0.375, 0.375, 0.4375, 0.5},
			{-0.5, 0.4375, 0.4375, 0.5, 0.5, 0.5}, 			
			{0.375, 0.375, -0.5, 0.5, 0.4375, 0.5},			
			{-0.4375, -0.4375, -0.5, -0.3125, -0.375, -0.3125},			
			{-0.375, -0.375, -0.5, -0.25, -0.3125, -0.25},			
			{-0.3125, -0.3125, -0.5, -0.1875, -0.25, -0.1875},		
			{-0.25, -0.25, -0.5, -0.125, -0.1875, -0.125},			
			{-0.1875, -0.1875, -0.5, -0.0625, -0.125, -0.0625},			
			{-0.125, -0.125, -0.5, 0, -0.0625, 0},			
			{-0.0625, -0.0625, -0.5, 0.0625, 0, 0.0625},			
			{0, 0, -0.5, 0.125, 0.0625, 0.125},
			{0.0625, 0.0625, -0.5, 0.1875, 0.125, 0.1875},			
			{0.125, 0.125, -0.5, 0.25, 0.1875, 0.25},		
			{0.1875, 0.1875, -0.5, 0.3125, 0.25, 0.3125},			
			{0.25, 0.25, -0.5, 0.375, 0.3125, 0.375}, 			
			{0.3125, 0.3125, -0.5, 0.4375, 0.375, 0.4375},			
			{0.4375, 0.4375, -0.5, 0.5, 0.5, 0.4375},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:ramp_inn_" .. mat.."upside_down", {
		replace_name = ":mystairwork:ramp_inn_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:ramp_flat_"..mat, {
	description = desc.." Ramp Flat",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:ramp_flat_" .. mat.."upside_down", {
		replace_name = ":mystairwork:ramp_flat_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("mystairwork:ramp_massiv_"..mat, {
	description = desc.."Massiv Ramp",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = groups,
	node_box = {
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
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":mystairwork:ramp_massiv_" .. mat.."upside_down", {
		replace_name = ":mystairwork:ramp_massiv_" .. mat,
		groups = {slabs_replace=1},
})

end

-- Replace old "upside_down" nodes with new param2 versions
minetest.register_abm({
	nodenames = {"group:slabs_replace"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		node.name = minetest.registered_nodes[node.name].replace_name
		node.param2 = node.param2 + 20
		if node.param2 == 21 then
			node.param2 = 23
		elseif node.param2 == 23 then
			node.param2 = 21
		end
		minetest.set_node(pos, node)
	end,
})