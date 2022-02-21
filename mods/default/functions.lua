-- mods/default/functions.lua

--
-- Sounds
--

function default.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="", gain=1.0}
	table.dug = table.dug or
			{name="default_dug_node", gain=0.25}
	table.place = table.place or
			{name="default_place_node_hard", gain=1.0}
	return table
end

function default.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_hard_footstep", gain=0.5}
	table.dug = table.dug or
			{name="default_hard_footstep", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_dirt_footstep", gain=1.0}
	table.dug = table.dug or
			{name="default_dirt_footstep", gain=1.5}
	table.place = table.place or
			{name="default_place_node", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_sand_footstep", gain=0.2}
	table.dug = table.dug or
			{name="default_sand_footstep", gain=0.4}
	table.place = table.place or
			{name="default_place_node", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_wood_footstep", gain=0.5}
	table.dug = table.dug or
			{name="default_wood_footstep", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_grass_footstep", gain=0.35}
	table.dug = table.dug or
			{name="default_grass_footstep", gain=0.7}
	table.dig = table.dig or
			{name="default_dig_crumbly", gain=0.4}
	table.place = table.place or
			{name="default_place_node", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

function default.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_glass_footstep", gain=0.5}
	table.dug = table.dug or
			{name="default_break_glass", gain=1.0}
	default.node_sound_defaults(table)
	return table
end

--
-- Lavacooling
--

minetest.register_abm({
	label = "Lava cooling",
	nodenames = {"default:lava_source", "default:lava_flowing"},
	neighbors = {"group:water"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if node.name == "default:lava_source" then
			minetest.set_node(pos, {name="default:obsidian"})
		else
			minetest.set_node(pos, {name="default:gravel"})
		end
		minetest.sound_play("default_cool_lava", {pos = pos,  gain = 0.25})
	end,
})

--
-- Papyrus and cactus growing
--

minetest.register_abm({
	label = "Grow cactus",
	nodenames = {"default:cactus"},
	neighbors = {"group:sand"},
	interval = 50,
	chance = 20,
	action = function(pos, node)
		pos.y = pos.y-1
		local name = minetest.get_node(pos).name
		if minetest.get_item_group(name, "sand") ~= 0 then
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "default:cactus" and height < 4 do
				height = height+1
				pos.y = pos.y+1
			end
			if height < 4 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="default:cactus"})
				end
			end
		end
	end,
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"default:papyrus"},
	neighbors = {"default:dirt_jungle_with_grass", "default:dirt_deep_with_grass", "default:dirt_med_with_grass", "default:dirt_with_grass", "default:sand", "default:desert_sand"},
	interval = 50,
	chance = 20,
	action = function(pos, node)
		pos.y = pos.y-1
		local name = minetest.get_node(pos).name
		if name == "default:dirt_with_grass" or name == "default:dirt_deep_with_grass" or name == "default:dirt_jungle_with_grass" or name == "default:dirt_med_with_grass" or name == "default:sand" or name == "default:desert_sand"  then
			if minetest.find_node_near(pos, 3, {"group:water"}) == nil then
				return
			end
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "default:papyrus" and height < 4 do
				height = height+1
				pos.y = pos.y+1
			end
			if height < 4 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="default:papyrus"})
				end
			end
		end
	end,
})

--
-- dig upwards
--

function default.dig_up(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end

-- another leafdecay

--
-- Leafdecay
--

default.leafdecay_trunk_cache = {}
default.leafdecay_enable_cache = true
-- Spread the load of finding trunks
default.leafdecay_trunk_find_allow_accumulator = 0

minetest.register_globalstep(function(dtime)
	local finds_per_second = 5000
	default.leafdecay_trunk_find_allow_accumulator =
			math.floor(dtime * finds_per_second)
end)

default.after_place_leaves = function(pos, placer, itemstack, pointed_thing)
	local node = minetest.get_node(pos)
	node.param2 = 1
	minetest.set_node(pos, node)
end

minetest.register_abm({
	label = "Leaf decay",
	nodenames = {"group:leafdecay"},
	neighbors = {"air", "group:liquid"},
	-- A low interval and a high inverse chance spreads the load
	interval = 2,
	chance = 5,

	action = function(p0, node, _, _)
		--print("leafdecay ABM at "..p0.x..", "..p0.y..", "..p0.z..")")
		local do_preserve = false
		local d = minetest.registered_nodes[node.name].groups.leafdecay
		if not d or d == 0 then
			--print("not groups.leafdecay")
			return
		end
		local n0 = minetest.get_node(p0)
		if n0.param2 ~= 0 then
			--
			--print("param2 ~= 0")
			return
		end
		local p0_hash = nil
		if default.leafdecay_enable_cache then
			p0_hash = minetest.hash_node_position(p0)
			local trunkp = default.leafdecay_trunk_cache[p0_hash]
			if trunkp then
				local n = minetest.get_node(trunkp)
				local reg = minetest.registered_nodes[n.name]
				-- Assume ignore is a trunk, to make the thing work at the border of the active area
				if n.name == "ignore" or (reg and reg.groups.tree and reg.groups.tree ~= 0) then
					--print("cached trunk still exists")
					return
				end
				--print("cached trunk is invalid")
				-- Cache is invalid
				table.remove(default.leafdecay_trunk_cache, p0_hash)
			end
		end
		if default.leafdecay_trunk_find_allow_accumulator <= 0 then
			return
		end
		default.leafdecay_trunk_find_allow_accumulator =
				default.leafdecay_trunk_find_allow_accumulator - 1
		-- Assume ignore is a trunk, to make the thing work at the border of the active area
		local p1 = minetest.find_node_near(p0, d, {"ignore", "group:tree"})
		if p1 then
			do_preserve = true
			if default.leafdecay_enable_cache then
				--print("caching trunk")
				-- Cache the trunk
				default.leafdecay_trunk_cache[p0_hash] = p1
			end
		end
		if not do_preserve then
			-- Drop stuff other than the node itself
			local itemstacks = minetest.get_node_drops(n0.name)
			for _, itemname in ipairs(itemstacks) do
				if minetest.get_item_group(n0.name, "leafdecay_drop") ~= 0 or
						itemname ~= n0.name then
					local p_drop = {
						x = p0.x - 0.5 + math.random(),
						y = p0.y - 0.5 + math.random(),
						z = p0.z - 0.5 + math.random(),
					}
					minetest.add_item(p_drop, itemname)
				end
			end
			-- Remove node
			minetest.remove_node(p0)
			--nodeupdate(p0)
		end
	end
})

--
-- cobbletransform
--

minetest.register_abm({
	label = "Grow moss on cobble",
	nodenames = {"default:cobble"},
	neighbors = {"group:water"},
	interval = 56,
	chance = 120,
	action = function(pos, node)
		      minetest.set_node(pos, {name = "default:mossycobble"})
	end
})

--
-- Grass growing
--

minetest.register_abm({
	label = "Grow grass on dirt",
	nodenames = {"default:dirt"},
	interval = 2,
	chance = 200,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if nodedef and (nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none"
				and (minetest.get_node_light(above) or 0) >= 13 then
			if name == "default:snow" or name == "default:snowblock" then
				minetest.set_node(pos, {name = "default:dirt_with_snow"})
			else
				minetest.set_node(pos, {name = "default:dirt_with_grass"})
			end
		end
	end
})

minetest.register_abm({
	label = "Kill grass on dirt",
	nodenames = {"default:dirt_with_grass"},
	interval = 2,
	chance = 20,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
				and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "default:dirt"})
		end
	end
})

--
-- Grass growing meditarian
--

minetest.register_abm({
	label = "Grow grass on mediterran dirt",
	nodenames = {"default:dirt_med"},
	interval = 2,
	chance = 200,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if nodedef and (nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none"
				and (minetest.get_node_light(above) or 0) >= 13 then
			if name == "default:snow" or name == "default:snowblock" then
				minetest.set_node(pos, {name = "default:dirt_with_snow"})
			else
				minetest.set_node(pos, {name = "default:dirt_med_with_grass"})
			end
		end
	end
})

minetest.register_abm({
	label = "Kill grass on mediterran dirt",
	nodenames = {"default:dirt_med_with_grass"},
	interval = 2,
	chance = 20,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
				and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "default:dirt_med"})
		end
	end
})
-- deep forest
minetest.register_abm({
	label = "Grow grass on deep forest dirt",
	nodenames = {"default:dirt_deep"},
	interval = 2,
	chance = 200,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if nodedef and (nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none"
				and (minetest.get_node_light(above) or 0) >= 13 then
			if name == "default:snow" or name == "default:snowblock" then
				minetest.set_node(pos, {name = "default:dirt_with_snow"})
			else
				minetest.set_node(pos, {name = "default:dirt_deep_with_grass"})
			end
		end
	end
})

minetest.register_abm({
	label = "Kill grass on deep forest dirt",
	nodenames = {"default:dirt_deep_with_grass"},
	interval = 2,
	chance = 20,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
				and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "default:dirt_deep"})
		end
	end
})

-- jungle
minetest.register_abm({
	label = "Grow grass on jungle dirt",
	nodenames = {"default:dirt_jungle"},
	interval = 2,
	chance = 200,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if nodedef and (nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none"
				and (minetest.get_node_light(above) or 0) >= 13 then
			if name == "default:snow" or name == "default:snowblock" then
				minetest.set_node(pos, {name = "default:dirt_with_snow"})
			else
				minetest.set_node(pos, {name = "default:dirt_jungle_with_grass"})
			end
		end
	end
})

minetest.register_abm({
	label = "Kill grass on jungle dirt",
	nodenames = {"default:dirt_jungle_with_grass"},
	interval = 2,
	chance = 20,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
				and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "default:dirt_jungle"})
		end
	end
})

-- ice
default.cool_ice = function(pos)
	minetest.set_node(pos, {name="default:ice"})
end

minetest.register_abm({
	label = "Freeze water",
	nodenames = {"group:water"},
	neighbors = {"default:ice"},
	interval = 452,
	chance = 7,
	action = function(pos, node, active_object_count, active_object_count_wider)
	        local pos0 = {x=pos.x-5,y=pos.y-0,z=pos.z-5}
		    local pos1 = {x=pos.x+5,y=pos.y+1,z=pos.z+5}
			   if #minetest.find_nodes_in_area(pos0, pos1, "default:dirt_with_snow") > 5 and pos.y > -1 and pos.y < 1 then
			      default.cool_ice(pos, node, active_object_count, active_object_count_wider)
			   else
		          return
		       end
	end,
})

-- Random Blocks
local para1 = {}
local blockname = {}
minetest.register_abm({
	label = "Randomize resource blocks",
	nodenames = {"default:block_randomizer"},
	interval = 1,
	chance = 2,
	action = function(pos, node)
		  if pos.y >= -250 then para1 = 1
		  elseif pos.y>= -500 and pos.y<= -251 then para1 = 2
		  elseif pos.y>= -750 and pos.y<= -501 then para1 = 3
		  elseif pos.y>= -1000 and pos.y<= -751 then para1 = 4
		  elseif pos.y>= -1500 and pos.y<= -1001 then para1 = 5
		  elseif pos.y<= -1501 then para1 = 6
		  end
	    local va_a = para1
		local va_b = para1 * 2
		local rndblock = math.random(va_a,va_b)
		if rndblock <= 2 then blockname = "default:coalblock"
		elseif rndblock >= 3 and rndblock <= 4 then blockname = "default:steelblock"
		elseif rndblock >= 5 and rndblock <= 6 then blockname = "default:bronzeblock"
		elseif rndblock >= 7 and rndblock <= 8 then blockname = "default:goldblock"
		elseif rndblock >= 9 and rndblock <= 10 then blockname = "default:mese"
		elseif rndblock >= 11 then
			local gemset = math.random(1,6)
			if gemset <= 1 then blockname = "default:rubyblock"
			elseif gemset == 2 then blockname = "default:topazblock"
			elseif gemset == 3 then blockname = "default:emeraldblock"
			elseif gemset == 4 then blockname = "default:sapphireblock"
			elseif gemset == 5 then blockname = "default:amethystblock"
			elseif gemset >= 6 then blockname = "default:diamondblock"
			end
		end
		minetest.set_node(pos, {name = blockname})


	end
})
-- Vases
minetest.register_abm({
	label = "Randomize vases",
	nodenames = {"default:vase_randomizer"},
	interval = 1,
	chance = 3,
	action = function(pos, node)
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
				   minetest.set_node(pos, {name = "air"})
				   return
				end
				minetest.set_node(pos, {name = vasentyp})

	end
})
