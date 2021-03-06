
local S = mobs.intllib

-- Cow by Krupnovpavel (additional texture by JurajVajda)

mobs:register_mob("mobs_animal:cow", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 4,
	hp_min = 15,
	hp_max = 20,
	armor = 150,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_cow.x",
	textures = {
		{"mobs_cow.png"},
		{"mobs_cow2.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_cow",
	},
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 3},
		{name = "mobs:leather", chance = 1, min = 1, max = 3},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 30,
		walk_start = 35,
		walk_end = 65,
		run_start = 105,
		run_end = 135,
		punch_start = 70,
		punch_end = 100,
	},
	follow = "farming:wheat",
	view_range = 7,
	replace_rate = 100,
	replace_what = {"default:grass_2", "default:grass_4"},
	replace_with = "air",
	fear_height = 2,
	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 8, true, true) then
			return
		end

		local tool = clicker:get_wielded_item()

		-- milk cow with empty bucket
		if tool:get_name() == "bucket:bucket_empty" then

			--if self.gotten == true
			if self.child == true then
				return
			end

			if self.gotten == true then
				minetest.chat_send_player(clicker:get_player_name(),
						S("Cow already milked!"))
				return
			end

			local inv = clicker:get_inventory()

			-- inv:remove_item("main", "bucket:bucket_empty")
			--
			-- if inv:room_for_item("main", {name = "mobs:bucket_milk"}) then
			-- 	clicker:get_inventory():add_item("main", "mobs:bucket_milk")
			-- else
			-- 	local pos = self.object:get_pos()
			-- 	pos.y = pos.y + 0.5
			-- 	minetest.add_item(pos, {name = "mobs:bucket_milk"})
			-- end

			-- imediately give milk bottles instead of milk bucket eliminating a pointless crafting step

			local milk_bottle = ItemStack("mobs:milkbottle 2")

			if inv:room_for_item("main", milk_bottle) then
				clicker:get_inventory():add_item("main", milk_bottle)
			else
				local pos = self.object:get_pos()
				pos.y = pos.y + 0.5
				minetest.add_item(pos, milk_bottle)
			end

			self.gotten = true -- milked

			return
		end

		mobs:capture_mob(self, clicker, 0, 5, 60, false, nil)
	end,
})

mobs:register_spawn("mobs_animal:cow",
	{"default:dirt_with_grass", "default:dirt_med_with_grass", "ethereal:green_dirt"}, 20, 10, 35000, 3, 31000, true)

mobs:register_egg("mobs_animal:cow", S("Cow"), "default_grass.png", 1)

-- compatibility
mobs:alias_mob("mobs:cow", "mobs_animal:cow")

-- bucket of milk
minetest.register_craftitem(":mobs:bucket_milk", {
	description = "Bucket of Milk (1)",
	inventory_image = "mobs_bucket_milk.png",
	stack_max = 1,
	on_use = minetest.item_eat(8, 'bucket:bucket_empty'),
})

minetest.register_craftitem(":mobs:milkbottle", {
	description = "Milkbottle (1)",
	inventory_image = "mobs_milkbottle.png",
	on_use = minetest.item_eat(1),
})

--minetest.register_craft({
	--output = "mobs:milkbottle 3",
	--recipe = {
	--	{'', 'mobs:bucket_milk', ''},
	--	{'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
	--},
	--replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
--})

minetest.register_craft({
		output = "mobs:milkbottle 2",
		recipe = {
			{'mobs:bucket_milk'},
		},
		replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
	})

minetest.register_craftitem(":mobs:honeymilk", {
	description = "Honeymilk (3)",
	inventory_image = "mobs_honeymilk.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craft({
	output = "mobs:honeymilk",
	recipe = {
		{'mobs:milkbottle', 'mobs:honey', ''},
	}
})

minetest.register_craftitem(":mobs:budder", {
	description = "Budder (2)",
	inventory_image = "mobs_budder.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:budder",
	recipe = "mobs:milkbottle",
	cooktime = 5,
	--replacements = {{ "mobs:milkbottle", "vessels:glass_bottle"}}
})

-- cheese wedge
minetest.register_craftitem(":mobs:cheese", {
	description = "Cheese",
	inventory_image = "mobs_cheese.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:cheese",
	recipe = "mobs:budder",
	cooktime = 5,
	--replacements = {{ "mobs:bucket_milk", "bucket:bucket_empty"}}
})

-- cheese block
minetest.register_node(":mobs:cheeseblock", {
	description = "Cheese Block",
	tiles = {"mobs_cheeseblock.png"},
	is_ground_content = false,
	groups = {crumbly = 3},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_craft({
	output = "mobs:cheeseblock",
	recipe = {
		{'mobs:cheese', 'mobs:cheese', 'mobs:cheese'},
		{'mobs:cheese', 'mobs:cheese', 'mobs:cheese'},
		{'mobs:cheese', 'mobs:cheese', 'mobs:cheese'},
	}
})

minetest.register_craft({
	output = "mobs:cheese 9",
	recipe = {
		{'mobs:cheeseblock'},
	}
})
