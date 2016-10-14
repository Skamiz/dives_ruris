
local S = mobs.intllib

-- Dirt Monster by PilzAdam

mobs:register_mob("mobs_monster:dirt_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	attack_animals = true,
	reach = 2,
	damage = 2,
	hp_min = 15,
	hp_max = 27,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {
		{"mobs_dirt_monster.png"},
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
		{name = "default:dirt",
		chance = 15, min = 1, max = 5},
		{name = "default:dirt_jungle",
		chance = 25, min = 0, max = 5},
		{name = "default:dirt_deep",
		chance = 25, min = 0, max = 5},
		{name = "default:dirt_med",
		chance = 25, min = 0, max = 5},
		{name = "farming:seed_onion",
		chance = 70, min = 0, max = 5},
		{name = "farming:seed_tomato",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_mushroom",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_salad",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_potato",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_strawberry",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_ananas",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_corn",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_pepper",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_carrot",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_beens",
		chance = 70, min = 0, max = 3},
		{name = "farming:seed_cotton",
		chance = 45, min = 0, max = 3},
		{name = "farming:seed_wheat",
		chance = 35, min = 1, max = 3},
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

mobs:register_spawn("mobs_monster:dirt_monster",
	{"default:dirt_with_grass", "default:dirt_med_with_grass", "ethereal:gray_dirt"}, 5, 0, 7000, 2, 31000, false)
	
mobs:register_spawn("mobs_monster:dirt_monster",
	{"default:dirt_with_grass", "default:dirt_med_with_grass" }, 3, 0, 3000, 5, 31000, false)

mobs:register_egg("mobs_monster:dirt_monster", S("Dirt Monster"), "default_dirt.png", 1)

-- compatibility
mobs:alias_mob("mobs:dirt_monster", "mobs_monster:dirt_monster")
