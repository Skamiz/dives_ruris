--Codefragment from eternalmod by Tenplus1(License: WTFPL)

default.place_tree = function (pos, ofx, ofz, schem)
	-- Remove Sapling and Place Tree Schematic
	minetest.env:set_node(pos, {name="air"})
	pos.x = pos.x - ofx
	pos.z = pos.z - ofz
	pos.y = pos.y - 1
	minetest.place_schematic(pos, minetest.get_modpath("default").."/schematics/"..schem..".mts", "random", nil, false ); --  "0", {}, false );
end

-- Grow saplings
minetest.register_abm({
	nodenames = {"group:sapling"},
	interval = 25,
	chance = 65,
	action = function(pos, node)

		local under =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name;

		-- Check if Sapling is growing on correct substrate
		if node.name == "default:sapling" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 2, 2, "appletree")
		elseif node.name == "default:sapling_beech" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 3, 3, "beechtree")
		elseif node.name == "default:sapling_birch" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 3, 3, "birchtree")
		elseif node.name == "default:sapling_poplar" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 2, 2, "poplartree")
		elseif node.name == "default:sapling_palm" and (under == "default:desert_sand" or under == "default:sand" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass") then
			default.place_tree(pos, 3, 3, "palmtree")
		elseif node.name == "default:sapling_orange" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 2, 2, "orangetree")
		elseif node.name == "default:sapling_jungle" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 5, 5, "jungletreexxl")
		elseif node.name == "default:sapling_jungle2" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 4, 4, "jungletree2")
		elseif node.name == "default:sapling_jungle3" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 3, 3, "jungletree3")
		elseif node.name == "default:sapling_rubber" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 3, 3, "rubbertree")
		elseif node.name == "default:sapling_olive" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 2, 2, "olivetree")
		elseif node.name == "default:sapling_pine" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 4, 4, "pinetree")
		elseif node.name == "default:sapling_pine" and under == "default:dirt_with_snow" then
			default.place_tree(pos, 4, 4, "snowpine")
		elseif node.name == "default:sapling_ahorn" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 3, 3, "ahorntree")
		elseif node.name == "default:sapling_oak" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 4, 4, "oaktree")
		elseif node.name == "default:sapling_banana" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 1, 1, "bananatree")
		elseif node.name == "default:sapling_cocoa" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 3, 3, "cocoatree")
		elseif node.name == "default:acacia_sapling" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 4, 4, "acacia_tree")
		elseif node.name == "default:sapling_cypress" and (under == "default:dirt_with_grass" or under == "default:dirt_jungle_with_grass" or under == "default:dirt_med_with_grass" or under == "default:dirt_deep_with_grass") then
			default.place_tree(pos, 1, 1, "cypresstree")

		end

	end,
})