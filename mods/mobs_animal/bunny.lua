
local S = mobs.intllib

-- Bunny by ExeterDad

minetest.register_craftitem(":mobs:bunnymeat_raw", {
	description = "Raw Bunnymeat (1)",
	inventory_image = "mobs_bunnymeat_raw.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem(":mobs:bunnymeat", {
	description = "Bunny Meat (2)",
	inventory_image = "mobs_bunnymeat.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:bunnymeat",
	recipe = "mobs:bunnymeat_raw",
	cooktime = 5,
})

mobs:register_mob("mobs_animal:bunny", {
	type = "animal",
	passive = true,
	reach = 1,
	hp_min = 1,
	hp_max = 4,
	armor = 200,
	collisionbox = {-0.268, -0.5, -0.268,  0.268, 0.167, 0.268},
	visual = "mesh",
	mesh = "mobs_bunny.b3d",
	drawtype = "front",
	textures = {
		{"mobs_bunny_grey.png"},
		{"mobs_bunny_brown.png"},
		{"mobs_bunny_white.png"},
	},
	sounds = {},
	makes_footstep_sound = false,
	walk_velocity = 1,
	run_velocity = 2,
	runaway = true,
	jump = true,
	drops = {
		{name = "mobs:bunnymeat_raw", chance = 1, min = 1, max = 2},
	},
	water_damage = 1,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 15,
		stand_start = 1,
		stand_end = 15,
		walk_start = 16,
		walk_end = 24,
		punch_start = 16,
		punch_end = 24,
	},
	follow = {"farming:carrot", "farming_plus:carrot_item"},
	view_range = 8,
	replace_rate = 10,
	replace_what = {"default:grass_2", "default:grass_1"},
	replace_with = "air",
	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 4, true, true) then
			return
		end

		-- Monty Python tribute
		local item = clicker:get_wielded_item()

		if item:get_name() == "mobs:lava_orb" then

			if not minetest.settings:get_bool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end

			self.object:set_properties({
				textures = {"mobs_bunny_evil.png"},
			})

			self.type = "monster"
			self.object:set_hp(20)

			return
		end

		mobs:capture_mob(self, clicker, 30, 50, 80, false, nil)
	end,

	attack_type = "dogfight",
	damage = 5,
})

mobs:register_spawn("mobs_animal:bunny",
	{"default:dirt_with_grass", "default:dirt_deep_with_grass", "ethereal:prairie_dirt"}, 20, 10, 15000, 2, 31000, true)

mobs:register_egg("mobs_animal:bunny", S("Bunny"), "mobs_bunny_inv.png", 0)

-- compatibility
mobs:alias_mob("mobs:bunny", "mobs_animal:bunny")
