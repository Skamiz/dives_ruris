
local S = mobs.intllib

-- Sand Monster by PilzAdam

mobs:register_mob("mobs_monster:sand_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	attack_animals = true,
	reach = 2,
	damage = 1,
	hp_min = 14,
	hp_max = 20,
	armor = 140,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_sand_monster.b3d",
	textures = {
		{"mobs_sand_monster.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_sandmonster",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 15,
	jump = true,
	floats = 0,
	drops = {
		{name = "default:desert_sand",
		chance = 3, min = 3, max = 5},
		{name = "default:sand",
		chance = 1, min = 3, max = 5},
		{name = "default:fruit_coconut",
		chance = 6, min = 0, max = 1},
	},
	water_damage = 3,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 4,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 39,
		walk_start = 41,
		walk_end = 72,
		run_start = 74,
		run_end = 105,
		punch_start = 74,
		punch_end = 105,
	},
--[[
	custom_attack = function(self, p)
		local pos = self.object:get_pos()
		minetest.add_item(pos, "default:sand")
	end,
]]
})

mobs:register_spawn("mobs_monster:sand_monster", {"default:desert_sand"}, 5, 0, 7000, 4, 31000)

mobs:register_egg("mobs_monster:sand_monster", S("Sand Monster"), "default_desert_sand.png", 1)

-- compatibility
mobs:alias_mob("mobs:sand_monster", "mobs_monster:sand_monster")
