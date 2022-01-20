--[[

	NEVER-ENDING FLINT and STEEL

	Uncraftable, at the moment, and I'm not sure yet how many wanna-be-firebug
	griefers are going to litter with fake-fire. Why give them this if it only
	makes the mess bigger? ~ LazyJ, 2014_03_13
	
	May add a priv for this later so trusted players can use it.
	~ LazyJ, 2014_06_19

minetest.register_craftitem("fake_fire:old_flint_and_steel", {
	description = "Never ending flint and steel",
	inventory_image = "flint_and_steel.png",
	stack_max = 1,
	liquids_pointable = false,
	on_use = function(itemstack, user, pointed_thing)
		n = minetest.get_node(pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_node(pointed_thing.above,
			{name="fake_fire:fake_fire"})
			minetest.sound_play("",
			{gain = 1.0, max_hear_distance = 20,})
		end
	end
})
--]]


-- RECIPE ITEM - FLINT
minetest.register_craftitem("fake_fire:flint", {
	description = "flint (found in granite)",
	inventory_image = "flint.png",
	stack_max = 99,
	liquids_pointable = false,
})



--[[ FLINT
minetest.register_craft({
	type = "shapeless",
	output = 'fake_fire:flint',
	recipe = {
			"default:gravel",
			"default:granite",
			"default:gravel",
	}
})
--]]


-- FLINT & STEEL
minetest.register_craft({
	type = "shapeless",
	output = 'fake_fire:flint_and_steel',
	recipe = {
		"fake_fire:flint",
		"default:steel_ingot",
	}
})



-- EMBERS
minetest.register_craft({
	type = "shapeless",
	output = 'fake_fire:embers',
	recipe = {
			"default:torch",
			"group:wood",
	}
})



-- CHIMNEY TOPS - SMOKELESS
	
	-- Only the smokeless kind will be craftable and shown in the inventory.
	-- The nodes are coded to switch to the smoking chimney tops when punched.
	-- ~ LazyJ  

-- STONE CHIMNEY TOP
minetest.register_craft({
	type = "shapeless",
	output = 'fake_fire:smokeless_chimney_top_stone',
	recipe = {
			"default:torch",
			"default:stone",
	}
})



-- SANDSTONE CHIMNEY TOP
minetest.register_craft({
	type = "shapeless",
	output = 'fake_fire:smokeless_chimney_top_sandstone',
	recipe = {
			"default:torch",
			"default:sandstone",
	}
})



