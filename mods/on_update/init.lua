local directions = {}
directions.up = {x = 0, y = 1, z = 0}
directions.down = {x = 0, y = -1, z = 0}
directions.north = {x = 0, y = 0, z = 1}
directions.south = {x = 0, y = 0, z = -1}
directions.east = {x = 1, y = 0, z = 0}
directions.west = {x = -1, y = 0, z = 0}


local function get_touching_nodes(pos)
	local positions = {}
	for _, v in pairs(directions) do
		table.insert(positions, vector.add(pos, v))
	end
	return positions
end

-- calls '_on_update' for a single node
local function update_node(pos)
	local node_def = minetest.registered_nodes[minetest.get_node(pos).name]
	if node_def._on_update then
		node_def._on_update(pos)
	end
end

-- calls '_on_update' for the six node surounding a pos
local function update_touching_nodes(pos_center)
	local touching = get_touching_nodes(pos_center)
	for _, pos in pairs(touching) do
		local node_def = minetest.registered_nodes[minetest.get_node(pos).name]
		local propagate
		if node_def and node_def._on_update then
			propagate = node_def._on_update(vector.new(pos))
		end
		-- TODO: turn this into a queue so it doesn't crash the server by overflow
		if propagate then
			update_touching_nodes(pos)
		end
	end
end

minetest.register_on_placenode(update_node)
minetest.register_on_placenode(update_touching_nodes)
minetest.register_on_dignode(update_touching_nodes)
