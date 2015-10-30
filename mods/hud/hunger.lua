-- Keep these for backwards compatibility
function hud.save_hunger(player)
	hud.set_hunger(player)
end
function hud.load_hunger(player)
	hud.get_hunger(player)
end

-- Poison player
local function poisenp(tick, time, time_left, player)
	time_left = time_left + tick
	if time_left < time then
		minetest.after(tick, poisenp, tick, time, time_left, player)
	end
	if player:get_hp()-1 > 0 then
		player:set_hp(player:get_hp()-1)
	end
	
end

function hud.item_eat(hunger_change, replace_with_item, poisen)
	return function(itemstack, user, pointed_thing)
		if itemstack:take_item() ~= nil and user ~= nil then
			local name = user:get_player_name()
			local h = tonumber(hud.hunger[name])
			local hp = user:get_hp()
			user:set_hp(hp+hunger_change)
			h=h+hunger_change
			if h>30 then h=30 end
			hud.hunger[name]=h
			hud.set_hunger(user)
			itemstack:add_item(replace_with_item) -- note: replace_with_item is optional
			--sound:eat from adventuretest by brandon reese
			if not sound then
			sound = "hunger_eat"
			end
			minetest.sound_play(sound, {to_player = name, gain = 0.7})
			
			if poisen then
				poisenp(1.0, poisen, 0, user)
			end
		end
		return itemstack
	end
end

local function overwrite(name, hunger_change, replace_with_item, poisen)
	local tab = minetest.registered_items[name]
	if tab == nil then return end
	tab.on_use = hud.item_eat(hunger_change, replace_with_item, poisen)
	minetest.registered_items[name] = tab
end

overwrite("default:apple", 1)
overwrite("default:fruit_cocoa", 1)
overwrite("default:fruit_orange", 1)
overwrite("default:fruit_olive", 1)
overwrite("default:fruit_banana", 1)
overwrite("default:fruit_coconut", 1)
overwrite("default:food_chocolate", 2)
overwrite("default:food_sugar", 1)
overwrite("default:food_chocobanana", 3)
overwrite("default:food_salt", 0)
overwrite("default:food_tomatosauce", 3)
overwrite("default:food_dough", 3)
overwrite("default:food_olive_oil", 3)
overwrite("default:food_pasta", 4)
overwrite("default:food_pasta_napoli", 6)
overwrite("default:food_pasta_bolognese", 8)
overwrite("default:food_salami", 4)
overwrite("default:food_pizza_raw", 5)
overwrite("default:food_pizza", 8)
overwrite("default:food_honey_rat", 3)
overwrite("default:food_raw_corncob", 2)
overwrite("default:food_grilled_corncob", 4)
overwrite("default:food_salad_sauce", 3)
overwrite("default:food_salad", 5)
overwrite("default:food_salad_mixed", 6)
overwrite("default:food_burger", 5)
overwrite("default:food_hotpot_raw", 5)
overwrite("default:food_hotpot", 7)
overwrite("default:food_polenta_raw", 5)
overwrite("default:food_polenta", 7)
overwrite("default:food_fruitsalad", 5)
overwrite("default:food_piedough", 3)
overwrite("default:food_piestrawberry_raw", 4)
overwrite("default:food_piestrawberry", 6)
overwrite("default:food_pieapple_raw", 4)
overwrite("default:food_pieapple", 6)
overwrite("default:food_piecocoba_raw", 4)
overwrite("default:food_piecocoba", 6)
overwrite("default:food_pieananas_raw", 4)
overwrite("default:food_pieananas", 6)
overwrite("default:food_piechoco_raw", 4)
overwrite("default:food_piechoco", 6)
overwrite("default:food_pieorange_raw", 4)
overwrite("default:food_pieorange", 6)
overwrite("default:food_chips_raw", 2)
overwrite("default:food_chips", 3)
overwrite("default:food_fish_raw", 1)
overwrite("default:food_fish_cooked", 2)
overwrite("default:food_fishnchips", 5)



if minetest.get_modpath("farming") ~= nil then
	overwrite("farming:bread", 3)
	overwrite("farming:onion", 1)
	overwrite("farming:tomato", 1)
	overwrite("farming:ananas", 1)
	overwrite("farming:mushroom", 1)
	overwrite("farming:salad", 1)
	overwrite("farming:potato", 1)
	overwrite("farming:corn", 1)
	overwrite("farming:strawberry", 1)
	overwrite("farming:carrot", 1)
	overwrite("farming:beens", 1)
	overwrite("farming:pepper", 0)
end

if minetest.get_modpath("mobs") ~= nil then
   overwrite("mobs:chicken_egg_fried", 2)
   overwrite("mobs:bucket_milk", 1, "bucket:bucket_empty")
   overwrite("mobs:milkbottle", 1)
   overwrite("mobs:budder", 2)
   overwrite("mobs:cheese", 3)
   overwrite("mobs:meat_raw", 1)
   overwrite("mobs:meat", 2)
   overwrite("mobs:bunnymeat_raw", 1)
   overwrite("mobs:bunnymeat", 2)
   overwrite("mobs:chicken_raw", 1)
   overwrite("mobs:chicken_cooked", 2)
   overwrite("mobs:pork_raw", 1)
   overwrite("mobs:pork_cooked", 2)
   overwrite("mobs:honey", 1)
   overwrite("mobs:honeymilk", 3)
   overwrite("mobs:rat_cooked", 1)

end
