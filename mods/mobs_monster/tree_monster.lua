
local S = mobs.intllib

-- Tree Monster (or Tree Gollum) by PilzAdam

mobs:register_mob("mobs_monster:tree_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_animals = true,
	--specific_attack = {"player", "mobs_animal:chicken"},
	reach = 2,
	damage = 2,
	hp_min = 17,
	hp_max = 33,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_tree_monster.b3d",
	textures = {
		{"mobs_tree_monster.png"},
		{"mobs_tree_monster2.png"},
	},
	blood_texture = "default_wood.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_treemonster",
	},
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	view_range = 15,
	drops = {
		{name = "default:sapling_pine",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_jungle",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_oak",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_ahorn",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_rubber",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_poplar",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_birch",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_olive",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_orange",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling_palm",
		chance = 55, min = 0, max = 2},
		{name = "default:sapling",
		chance = 35, min = 1, max = 2},
		{name = "default:apple",
		chance = 17, min = 1, max=3},
		{name = "default:fruit_coconut",
		chance = 28, min = 0, max=3},
		{name = "default:fruit_cocoa",
		chance = 18, min = 0, max=3},
		{name = "default:fruit_banana",
		chance = 18, min = 0, max=3},
		{name = "default:fruit_orange",
		chance = 18, min = 0, max=3},
		{name = "default:fruit_olive",
		chance = 18, min = 0, max=3},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 2,
	fall_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 24,
		walk_start = 25,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		punch_start = 48,
		punch_end = 62,
	},
})

mobs:register_spawn("mobs_monster:tree_monster",
	{"default:dirt_jungle_with_grass", "default:dirt_deep_with_grass"}, 3, 0, 7000, 3, 31000, false)
mobs:register_spawn("mobs_monster:tree_monster",
	{"default:dirt_jungle_with_grass", "default:dirt_deep_with_grass"}, 10, 0, 15000, 2, 31000, false)

mobs:register_egg("mobs_monster:tree_monster", S("Tree Monster"), "default_tree_top.png", 1)

-- compatibility
mobs:alias_mob("mobs:tree_monster", "mobs_monster:tree_monster")

-- ethereal sapling compatibility
if not minetest.get_modpath("ethereal") then
	minetest.register_alias("ethereal:tree_sapling", "default:sapling")
	minetest.register_alias("ethereal:jungle_tree_sapling", "default:junglesapling")
end
