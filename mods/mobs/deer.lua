

-- kgb mobs

mobs:register_mob("mobs:deer", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 1,
	hp_min = 15,
	hp_max = 25,
	armor = 130,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_deer2.x",
	textures = {
		{"mobs_deer.png"},
	},
	makes_footstep_sound = true,
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	follow = "default:apple",
	view_range = 10,
	drops = {
		{name = "mobs:meat_raw",
		chance = 1, min = 1, max = 2},
		{name = "mobs:leather",
		chance = 1, min = 1, max = 3},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		stand_start = 25,
		stand_end = 75,
		walk_start = 75,
		walk_end = 100,
		punch_start = 70,
		punch_end = 100,
	},
	
})

mobs:register_spawn("mobs:deer", {"default:dirt_deep_with_grass", "default:dirt_with_snow"}, 20, 10, 15000, 1, 31000)


