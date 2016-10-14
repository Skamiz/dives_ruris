
local S = mobs.intllib

-- Dirt Monster by PilzAdam

mobs:register_mob("mobs_monster:snow_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	attack_animals = true,
	reach = 2,
	damage = 2,
	hp_min = 15,
	hp_max = 27,
	armor = 110,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {
		{"mobs_snow_monster.png"},
	},
	blood_texture = "default_dirt.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dirtmonster",
	},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	drops = {
		{name = "default:snow", chance = 1, min = 3, max = 5},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 2,
	fear_height = 4,
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

mobs:register_spawn("mobs_monster:snow_monster",
	{"default:snow", "default:snowblock" }, 5, 0, 3000, 3, 31000, false)
	mobs:register_spawn("mobs_monster:snow_monster",
	{"default:snow", "default:snowblock"}, 3, 0, 3000, 5, 31000, false)

mobs:register_egg("mobs_monster:snow_monster", S("Snow Monster"), "default_snow.png", 1)

-- compatibility
mobs:alias_mob("mobs:snow_monster", "mobs_monster:snow_monster")
