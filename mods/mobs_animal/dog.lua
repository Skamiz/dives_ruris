local S = mobs.intllib

-- Npc by TenPlus1 + Wolf by KrapnoPavel = Dog by Glünggi

mobs.dog_drops = {
	"mobs:leather"
}

mobs:register_mob("mobs_animal:dog", {
	type = "npc",
	passive = false,
	reach = 2,
	damage = 3,
	attack_type = "dogfight",
	group_attack = true,
	attacks_monsters = true,
	hp_min = 25,
	hp_max = 50,
	armor = 150,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_wolf.x",
	--drawtype = "front",
	textures = {
		{"mobs_wolf.png"},
	},
	child_texture = {
		{"mobs_wolf.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		attack = "mobs_dog",
	},
	walk_velocity = 4,
	run_velocity = 5,
	jump = true,
	drops = {
		{name = "default:leather",
		chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"mobs:meat_raw", "mobs:meat"},
	view_range = 15,
	owner = "",
	order = "follow",
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
	on_rightclick = function(self, clicker)

		-- feed to heal npc
		if not mobs:feed_tame(self, clicker, 8, true, true) then
			local item = clicker:get_wielded_item()
			local name = clicker:get_player_name()

			-- right clicking with meat drops random item from mobs.npc_drops
			if item:get_name() == "mobs:meat_raw" then
				if not minetest.settings:get_bool("creative_mode") then
					item:take_item()
					clicker:set_wielded_item(item)
				end
				local pos = self.object:get_pos()
				pos.y = pos.y + 0.5
				--[[
				minetest.add_item(pos, {
					name = mobs.dog_drops[math.random(1, #mobs.dog_drops)]
				})
				--]]
				return
			else
				-- if owner switch between follow and stand
				if self.owner and self.owner == clicker:get_player_name() then
					if self.order == "follow" then
						self.order = "stand"
					else
						self.order = "follow"
					end
				end
			end
		end

		mobs:capture_mob(self, clicker, 0, 5, 80, false, nil)
	end,
})

mobs:register_spawn("mobs_animal:dog", {"default:dirt_deep_with_grass"}, 5, 0, 8000, 3, 31000, true)

mobs:register_egg("mobs_animal:dog", S("Dog"), "default_granite.png", 1)

-- compatibility
mobs:alias_mob("mobs:dog", "mobs_animal:dog")