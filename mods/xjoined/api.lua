

-- WALLS
--------------------------------------------------------------------------------

local wall_prototype = {
	description = "nameless wall",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {},
	drawtype = "nodebox",
	connects_to = {"group:xjoined", "group:solid_node"},
	node_box = {
		type = "connected",
		fixed = {-4/16, -8/16, -4/16, 4/16, 8/16, 4/16},
		connect_front = {-3/16, -8/16, -8/16, 3/16, 6/16, -4/16},
        connect_left = {-8/16, -8/16, -3/16, -4/16, 6/16, 3/16},
        connect_back = {-3/16, -8/16, 4/16, 3/16, 6/16, 8/16},
        connect_right = {4/16, -8/16, -3/16, 8/16, 6/16, 3/16},
	}
}

local nodebox_wall_nopost = {
	type = "connected",
	fixed = {-3/16, -8/16, -3/16, 3/16, 6/16, 3/16},
	connect_front = {-3/16, -8/16, -8/16, 3/16, 6/16, -3/16},
	connect_left = {-8/16, -8/16, -3/16, -3/16, 6/16, 3/16},
	connect_back = {-3/16, -8/16, 3/16, 3/16, 6/16, 8/16},
	connect_right = {3/16, -8/16, -3/16, 8/16, 6/16, 3/16},
}

function xjoined.register_wall(name, def)
	for k, v in pairs(wall_prototype) do
		if def[k] == nil then
			-- if type(v) == "table" then v = teble.copy(v)
			def[k] = v
		end
	end
	def.groups.xjoined = 1
	def.groups.wall = 1
	def.on_punch = function(pos, node, puncher, pointed_thing)
		if puncher:get_wielded_item():get_name() == name then
			minetest.set_node(pos, {name = name .. "_nopost"})
		else
			minetest.node_punch(pos, node, puncher, pointed_thing)
		end
	end

	local def_np = table.copy(def)

	minetest.register_node(name, def)

	def_np.drops = {name}
	def_np.groups.not_in_creative_inventory = 1
	def_np.node_box = nodebox_wall_nopost
	def_np.on_punch = function(pos, node, puncher, pointed_thing)
		if puncher:get_wielded_item():get_name() == name then
			minetest.set_node(pos, {name = name})
		else
			minetest.node_punch(pos, node, puncher, pointed_thing)
		end
	end
	minetest.register_node(name .. "_nopost", def_np)
end

function xjoined.register_wall_recipe(output, input)
	minetest.register_craft({
		output = output,
		recipe = {
            {"", input, ""},
            {input, input, input},
            {input, input, input},
        },
	})
end


-- FENCES
--------------------------------------------------------------------------------

local fence_prototype = {
	description = "nameless fence",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {},
	drawtype = "nodebox",
	connects_to = {"group:xjoined", "group:solid_node"},
	node_box = {
		type = "connected",
		fixed = {-2/16, -8/16, -2/16, 2/16, 8/16, 2/16},
		connect_front = {
			{-1/16, -5/16, -8/16, 1/16, -3/16, -2/16},
			{-1/16, 3/16, -8/16, 1/16, 5/16, -2/16},
		},
        connect_left = {
			{-8/16, -5/16, -1/16, -2/16, -3/16, 1/16},
			{-8/16, 3/16, -1/16, -2/16, 5/16, 1/16},
		},
        connect_back = {
			{-1/16, -5/16, 2/16, 1/16, -3/16, 8/16},
			{-1/16, 3/16, 2/16, 1/16, 5/16, 8/16},
		},
        connect_right = {
			{2/16, -5/16, -1/16, 8/16, -3/16, 1/16},
			{2/16, 3/16, -1/16, 8/16, 5/16, 1/16},
		},
	}
}

local nodebox_fence_nopost = {
	type = "connected",
	fixed = {
		{-1/16, -5/16, -1/16, 1/16, -3/16, 1/16},
		{-1/16, 3/16, -1/16, 1/16, 5/16, 1/16},
	},
	connect_front = {
		{-1/16, -5/16, -8/16, 1/16, -3/16, -1/16},
		{-1/16, 3/16, -8/16, 1/16, 5/16, -1/16},
	},
	connect_left = {
		{-8/16, -5/16, -1/16, -1/16, -3/16, 1/16},
		{-8/16, 3/16, -1/16, -1/16, 5/16, 1/16},
	},
	connect_back = {
		{-1/16, -5/16, 1/16, 1/16, -3/16, 8/16},
		{-1/16, 3/16, 1/16, 1/16, 5/16, 8/16},
	},
	connect_right = {
		{1/16, -5/16, -1/16, 8/16, -3/16, 1/16},
		{1/16, 3/16, -1/16, 8/16, 5/16, 1/16},
	},
}

function xjoined.register_fence(name, def)
	for k, v in pairs(fence_prototype) do
		if def[k] == nil then
			-- if type(v) == "table" then v = teble.copy(v)
			def[k] = v
		end
	end
	def.groups.xjoined = 1
	def.groups.fence = 1
	def.on_punch = function(pos, node, puncher, pointed_thing)
		if puncher:get_wielded_item():get_name() == name then
			minetest.set_node(pos, {name = name .. "_nopost"})
		else
			minetest.node_punch(pos, node, puncher, pointed_thing)
		end
	end

	local def_np = table.copy(def)

	minetest.register_node(name, def)

	def_np.drops = {name}
	def_np.groups.not_in_creative_inventory = 1
	def_np.node_box = nodebox_fence_nopost
	def_np.on_punch = function(pos, node, puncher, pointed_thing)
		if puncher:get_wielded_item():get_name() == name then
			minetest.set_node(pos, {name = name})
		else
			minetest.node_punch(pos, node, puncher, pointed_thing)
		end
	end
	minetest.register_node(name .. "_nopost", def_np)
end


-- PANES
--------------------------------------------------------------------------------

local pane_prototype = {
	description = "nameless pane",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {},
	drawtype = "nodebox",
	connects_to = {"group:xjoined", "group:solid_node"},
	node_box = {
		type = "connected",
		fixed = {-1/16, -8/16, -1/16, 1/16, 8/16, 1/16},
		connect_front = {-1/16, -8/16, -8/16, 1/16, 8/16, -1/16},
        connect_left = {-8/16, -8/16, -1/16, -1/16, 8/16, 1/16},
        connect_back = {-1/16, -8/16, 1/16, 1/16, 8/16, 8/16},
        connect_right = {1/16, -8/16, -1/16, 8/16, 8/16, 1/16},
	}
}

function xjoined.register_pane(name, def)
	for k, v in pairs(pane_prototype) do
		if def[k] == nil then
			def[k] = v
		end
	end
	def.groups.xjoined = 1
	def.groups.pane = 1
	minetest.register_node(name, def)
end

function xjoined.register_pane_recipe(output, input)
	minetest.register_craft({
		output = output,
		recipe = {
            {input, input, input},
            {input, input, input},
        },
	})
end


-- connect to all full nodes
--------------------------------------------------------------------------------

minetest.register_on_mods_loaded(function()
	for name, def in pairs(minetest.registered_nodes) do
		if def.drawtype == "normal" and def.walkable then
			local groups = table.copy(def.groups)
			groups["solid_node"] = 1
			minetest.override_item(name,{
				groups = groups,
			})
		end
	end
end)
