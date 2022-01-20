
function columnia.register_all(mat, desc, image, groups, craft, sounds)

minetest.register_node("columnia:column_mid_"..mat, {
	description = desc.." Column Middle",
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
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25}, 
		}
	},
	on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_mid_" .. mat.."upside_down", {
		replace_name = ":columnia:column_mid_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_top_"..mat, {
	description = desc.." Column Top",
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
			   {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			   {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5}, 
			   {-0.375, 0, -0.375, 0.375, 0.5, 0.375},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_top_" .. mat.."upside_down", {
		replace_name = ":columnia:column_top_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_bottom_"..mat, {
	description = desc.." Column Bottom",
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
			    {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			    {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
			    {-0.375, -0.5, -0.375, 0.375, 0, 0.375},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_bottom_" .. mat.."upside_down", {
		replace_name = ":columnia:column_bottom_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_crosslink_"..mat, {
	description = desc.." Column Crosslink",
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
			   {-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			   {-0.5, 0, -0.25, 0.5, 0.5, 0.25},
			   {-0.25, 0, -0.5, 0.25, 0.5, 0.5},
			   {-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_crosslink_" .. mat.."upside_down", {
		replace_name = ":columnia:column_crosslink_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_link_"..mat, {
	description = desc.." Column Link",
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
			{-0.25, 0, -0.5, 0.25, 0.5, 0.5},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_link_" .. mat.."upside_down", {
		replace_name = ":columnia:column_link_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linkdown_"..mat, {
	description = desc.." Column Link Down",
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
			   {-0.25, 0, -0.5, 0.25, 0.5, 0.5},
			   {-0.125, -0.5, -0.125, 0.125, 0, 0.125},
			   {-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			   {-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linkdown_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linkdown_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linkcross_"..mat, {
	description = desc.." Column Link Cross",
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
			{-0.25, 0, -0.5, 0.25, 0.5, 0.5}, 
			{-0.5, 0, -0.25, 0.5, 0.5, 0.25},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linkcross_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linkcross_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linkcrossdown_"..mat, {
	description = desc.." Column Link Cross Down",
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
			{-0.25, 0, -0.5, 0.25, 0.5, 0.5}, 
			{-0.5, 0, -0.25, 0.5, 0.5, 0.25}, 
			{-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875}, 
			{-0.125, -0.375, -0.125, 0.125, -0.125, 0.125},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linkcrossdown_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linkcrossdown_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linkvertical_"..mat, {
	description = desc.." Column Link Vertical",
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
			   {-0.1875, 0.375, -0.1875, 0.1875, 0.5, 0.1875}, 
			{-0.125, -0.375, -0.125, 0.125, -0.125, 0.125}, 
			{-0.1875, -0.125, -0.1875, 0.1875, 0.125, 0.1875},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			{-0.125, 0.125, -0.125, 0.125, 0.375, 0.125},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linkvertical_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linkvertical_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linkangle_"..mat, {
	description = desc.." Column Link Angle",
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
			{-0.25, 0, -0.25, 0.25, 0.5, 0.5},
			{0.25, 0, -0.25, 0.5, 0.5, 0.25},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linkangle_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linkangle_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linkangle_down_"..mat, {
	description = desc.." Column Link Angle Down",
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
			{-0.25, 0, -0.25, 0.25, 0.5, 0.5},
			{0.25, 0, -0.25, 0.5, 0.5, 0.25},
			{-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
			{-0.125, -0.375, -0.125, 0.125, -0.125, 0.125},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linkangle_down_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linkangle_down_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linktee_"..mat, {
	description = desc.." Column Link  T-Form",
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
			{-0.25, 0, -0.5, 0.25, 0.5, 0.5},
			{0.25, 0, -0.25, 0.5, 0.5, 0.25},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linktee_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linktee_" .. mat,
		groups = {slabs_replace=1},
})

minetest.register_node("columnia:column_linktee_down_"..mat, {
	description = desc.." Column Link  T-Form Down",
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
			{-0.25, 0, -0.5, 0.25, 0.5, 0.5}, 
			{0.25, 0, -0.25, 0.5, 0.5, 0.25}, 
			{-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875}, 
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875}, 
			{-0.125, -0.375, -0.125, 0.125, -0.125, 0.125},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_linktee_down_" .. mat.."upside_down", {
		replace_name = ":columnia:column_linktee_down_" .. mat,
		groups = {slabs_replace=1},
})
--[[
minetest.register_node("columnia:column_stairsub_"..mat, {
	description = desc.." Column Stair Substructure",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	--sunlight_propagates = true,
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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_stairsub_" .. mat.."upside_down", {
		replace_name = ":columnia:column_stairsub_" .. mat,
		groups = {slabs_replace=1},
})
--]]
minetest.register_node("columnia:column_stairsubpillar_"..mat, {
	description = desc.." Column Stair Substructure Pillar",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	--sunlight_propagates = true,
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
				{-0.25, -0.5, -0.25, 0.25, 0.4375, 0.25},
		    },
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

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
		end,
	sounds = sounds,
	-- on_place = minetest.rotate_node,
})
minetest.register_node(":columnia:column_stairsubpillar_" .. mat.."upside_down", {
		replace_name = ":columnia:column_stairsubpillar_" .. mat,
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