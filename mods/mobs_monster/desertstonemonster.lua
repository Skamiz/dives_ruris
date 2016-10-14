
local S = mobs.intllib

-- Stone Monster by PilzAdam

mobs:register_mob("mobs_monster:desertstonemonster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 3,
	hp_min = 22,
	hp_max = 35,
	armor = 90,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {
		{"mobs_desertstone_monster.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_stonemonster",
	},
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	floats = 0,
	view_range = 10,
	drops = {
		{name = "default:coal_lump",
		chance=52, min=0, max=3},
		{name = "default:desert_stone",
		chance=48, min=0, max=3},
		{name = "default:desert_cobble",
		chance=40, min=1, max=3},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})

mobs:spawn_specific("mobs_monster:desertstonemonster", {"default:desert_stone"}, "air", 0, 30, 30, 7000, 3, 90, 31000)

mobs:register_spawn("mobs_monster:desertstonemonster", {"default:desert_stone"}, 5, 0, 7000, 3, 31000)

mobs:register_egg("mobs_monster:desertstonemonster", S("DesertStone Monster"), "default_desert_stone.png", 1)

-- compatibility
mobs:alias_mob("mobs:desertstonemonster", "mobs_monster:desertstonemonster")
