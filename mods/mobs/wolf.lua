
-- kgb mobs

mobs:register_mob("mobs:wolf", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 2,
	hp_min = 8,
	hp_max = 20,
	armor = 150,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_wolf.x",
	textures = {
		{"mobs_wolf.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		attack = "mobs_wolf",
	},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	drops = {
		drops = {
		{name = "mobs:meat_raw",
		chance = 44, min = 0, max = 1},
		{name = "mobs:leather",
		chance = 22, min = 1, max = 1},
	},
		
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 10,
		stand_end = 20,
		walk_start = 75,
		walk_end = 100,
		run_start = 100,
		run_end = 130,
		punch_start = 135,
		punch_end = 155,
	},
})

mobs:register_spawn("mobs:wolf", {"default:dirt_deep_with_grass", "default:dirt_with_snow"}, 5, 0, 8000, 3, 31000)

