-- Food (dependes to farming and hunger)

--
-- recipes
--

-- Chocolate 
minetest.register_craftitem("default:food_chocolate", {
	description = "Chocolate (2)",
	inventory_image = "default_food_chocolate.png",
    on_use = minetest.item_eat(2),
})


minetest.register_craft({
    type = "shapeless",
	output = 'default:food_chocolate',
	recipe = 
		{'default:fruit_cocoa', 'default:fruit_cocoa'},
	
})

-- Chocobanana
minetest.register_craftitem("default:food_chocobanana", {
	description = "Chocobanana (3)",
	inventory_image = "default_food_chocobanana.png",
    on_use = minetest.item_eat(3),
})


minetest.register_craft({
    type = "shapeless",
	output = 'default:food_chocobanana',
	recipe = {'default:fruit_banana', 'default:food_chocolate'},
})
-- salt
minetest.register_craftitem("default:food_salt", {
	description = "Salt",
	inventory_image = "default_food_salt.png",
    on_use = minetest.item_eat(0),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_salt 3",
	recipe = "bucket:bucket_water",
	cooktime = 15,
	replacements = {{ "bucket:bucket_water", "bucket:bucket_empty"}}
})

-- Tomatosauce
minetest.register_craftitem("default:food_tomatosauce", {
	description = "Tomatosauce (3)",
	inventory_image = "default_food_tomatosauce.png",
    on_use = minetest.item_eat(3),
})


minetest.register_craft({
    
	output = 'default:food_tomatosauce',
	recipe = {
	    {'farming:pepper', '', 'default:food_salt'},
		{'farming:tomato', 'farming:tomato', 'farming:tomato'},
		{'', 'vessels:glass_bottle', ''},
	}
})

-- dough
minetest.register_craftitem("default:food_dough", {
	description = "Dough (3)",
	inventory_image = "default_food_dough.png",
    on_use = minetest.item_eat(3),
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:food_dough',
	recipe = {'farming:flour', 'mobs:egg', 'default:food_salt'},
})

-- pasta
minetest.register_craftitem("default:food_pasta", {
	description = "Pasta (4)",
	inventory_image = "default_food_pasta.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_pasta",
	recipe = "default:food_dough",
	cooktime = 5
})

--pasta napoli
minetest.register_craftitem("default:food_pasta_napoli", {
	description = "Pasta Napoli (6)",
	inventory_image = "default_food_pasta_napoli.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_pasta_napoli',
	recipe = 
		{'mobs:cheese','default:food_tomatosauce', 'default:food_olive_oil', 'farming:onion', 'default:food_pasta'},
	
})

--pasta bolognese 

minetest.register_craftitem("default:food_pasta_bolognese", {
	description = "Pasta Bolognese (8)",
	inventory_image = "default_food_pasta_bolognese.png",
    on_use = minetest.item_eat(8),
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:food_pasta_bolognese ',
	recipe = {'default:food_pasta_napoli', 'mobs:pork_cooked', 'mobs:meat'},
})

--oliveoil
minetest.register_craftitem("default:food_olive_oil", {
	description = "Olive Oil (3)",
	inventory_image = "default_food_olive_oil.png",
    on_use = minetest.item_eat(3),
})


minetest.register_craft({
    output = 'default:food_olive_oil',
	recipe = {
		{'default:fruit_olive', 'default:fruit_olive', 'default:fruit_olive'},
		{'', 'vessels:glass_bottle', ''},
	}
})

--Salami

minetest.register_craftitem("default:food_salami", {
	description = "Salami (4)",
	inventory_image = "default_food_salami.png",
    on_use = minetest.item_eat(3),
})


minetest.register_craft({
    type = "shapeless",
    output = 'default:food_salami',
	recipe = 
		{'farming:pepper', 'default:food_salt', 'mobs:meat_raw', 'mobs:pork_raw'},
	
})

-- Pizza ... Pizza!

minetest.register_craftitem("default:food_pizza_raw", {
	description = "Pizza Raw (5)",
	inventory_image = "default_food_pizza_raw.png",
    on_use = minetest.item_eat(5),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_pizza_raw',
	recipe = 
	    {'mobs:cheese', 'farming:onion', 'farming:pepper', 'default:food_tomatosauce', 'default:food_salami', 'farming:mushroom', 'default:food_dough'},
	
})

minetest.register_craftitem("default:food_pizza", {
	description = "Pizza(8)",
	inventory_image = "default_food_pizza.png",
    on_use = minetest.item_eat(8),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_pizza",
	recipe = "default:food_pizza_raw",
	cooktime = 5
})

-- Honeyrat

minetest.register_craftitem("default:food_honey_rat", {
	description = "Honey Rat (3)",
	inventory_image = "default_food_honey_rat.png",
    on_use = minetest.item_eat(3),
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:food_honey_rat',
	recipe = {'mobs:rat_cooked', 'mobs:honey'},
})

-- Maiskolben

minetest.register_craftitem("default:food_raw_corncob", {
	description = "Spiced Raw Corncob (2)",
	inventory_image = "default_food_raw_corncob.png",
    on_use = minetest.item_eat(2),
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:food_raw_corncob',
	recipe = {'farming:corn', 'mobs:budder', 'default:food_salt'},
})

minetest.register_craftitem("default:food_grilled_corncob", {
	description = "Grilled Corncob(4)",
	inventory_image = "default_food_grilled_corncob.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_grilled_corncob",
	recipe = "default:food_raw_corncob",
	cooktime = 5
})

-- saladsauce

minetest.register_craftitem("default:food_salad_sauce", {
	description = "Salad Sauce (3)",
	inventory_image = "default_food_salad_sauce.png",
    on_use = minetest.item_eat(3),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_salad_sauce',
	recipe = 
		{'farming:pepper', 'default:food_salt', 'default:food_olive_oil', 'mobs:milkbottle'},
	
})

-- salad

minetest.register_craftitem("default:food_salad", {
	description = "Salad (5)",
	inventory_image = "default_food_salad.png",
    on_use = minetest.item_eat(5),
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:food_salad',
	recipe = {'farming:salad', 'default:food_salad_sauce', 'farming:onion'},
})

-- salad mixed

minetest.register_craftitem("default:food_salad_mixed", {
	description = "Salad Mixed (6)",
	inventory_image = "default_food_salad_mixed.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_salad_mixed',
	recipe = 
		{'farming:carrot', 'farming:mushroom', 'farming:tomato', 'default:food_salad'},
	
})

-- burger

minetest.register_craftitem("default:food_burger", {
	description = "Burger (5)",
	inventory_image = "default_food_burger.png",
    on_use = minetest.item_eat(5),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_burger',
	recipe = 
		{'farming:onion', 'mobs:meat', 'farming:salad', 'farming:tomato', 'farming:bread'},
	
})

-- hotpot

minetest.register_craftitem("default:food_hotpot_raw", {
	description = "Hotpot Raw (5)",
	inventory_image = "default_food_hotpot_raw.png",
    on_use = minetest.item_eat(5),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_hotpot_raw',
	recipe = 
	    {'farming:pepper', 'farming:mushroom', 'default:food_salt',
		 'farming:onion', 'mobs:chicken_raw', 'farming:carrot',
		 'farming:potato', 'farming:beens', 'farming:tomato'},
	
})

minetest.register_craftitem("default:food_hotpot", {
	description = "Hotpot(7)",
	inventory_image = "default_food_hotpot.png",
    on_use = minetest.item_eat(7),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_hotpot",
	recipe = "default:food_hotpot_raw",
	cooktime = 5
})

-- oven chips

minetest.register_craftitem("default:food_chips_raw", {
	description = "Chips Raw (2)",
	inventory_image = "default_food_chips_raw.png",
    on_use = minetest.item_eat(2),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_chips_raw',
	recipe = 
	    {'farming:potato', 'default:food_salt', 'default:paper'},
	
})

minetest.register_craftitem("default:food_chips", {
	description = "Chips(3)",
	inventory_image = "default_food_chips.png",
    on_use = minetest.item_eat(3),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_chips",
	recipe = "default:food_chips_raw",
	cooktime = 5
})


-- polenta with karnikel

minetest.register_craftitem("default:food_polenta_raw", {
	description = "Polenta Raw (5)",
	inventory_image = "default_food_polenta_raw.png",
    on_use = minetest.item_eat(5),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_polenta_raw',
	recipe = 
	    {'farming:pepper', 'mobs:cheese', 'default:food_salt',
		 'farming:onion', 'mobs:bunnymeat_raw', 'farming:carrot',
		 'farming:corn', 'farming:corn', 'farming:corn'},
	
})

minetest.register_craftitem("default:food_polenta", {
	description = "Polenta(7)",
	inventory_image = "default_food_polenta.png",
    on_use = minetest.item_eat(7),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_polenta",
	recipe = "default:food_polenta_raw",
	cooktime = 5
})

-- fruitsalad
minetest.register_craftitem("default:food_fruitsalad", {
	description = "Fruitsalad (5)",
	inventory_image = "default_food_fruitsalad.png",
    on_use = minetest.item_eat(5),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_fruitsalad',
	recipe = 
	    {'farming:ananas', 'default:food_sugar', 'farming:strawberry',
		 'default:fruit_banana', 'default:apple', 'default:fruit_orange', 'default:fruit_coconut'},
	
})

-- pie's 

-- Pie dough

minetest.register_craftitem("default:food_piedough", {
	description = "Pie Dough (3)",
	inventory_image = "default_food_piedough.png",
    on_use = minetest.item_eat(3),
})

minetest.register_craft({
    type = "shapeless",
    output = 'default:food_piedough',
	recipe = 
		{'default:food_sugar', 'mobs:budder', 'farming:flour', 'mobs:egg'},
	
})

-- Strawberry Pie

minetest.register_craftitem("default:food_piestrawberry_raw", {
	description = "Strawberry Pie Raw (4)",
	inventory_image = "default_food_piestrawberry_raw.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
    output = 'default:food_piestrawberry_raw',
	recipe = {
	    {'', 'default:food_sugar', ''},
		{'farming:strawberry', 'farming:strawberry', 'farming:strawberry'},
		{'', 'default:food_piedough', ''},
	}
})

minetest.register_craftitem("default:food_piestrawberry", {
	description = "Strawberry Pie(6)",
	inventory_image = "default_food_piestrawberry.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_piestrawberry",
	recipe = "default:food_piestrawberry_raw",
	cooktime = 5
})

-- Apple Pie

minetest.register_craftitem("default:food_pieapple_raw", {
	description = "American Pie Raw (4)",
	inventory_image = "default_food_pieapple_raw.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
    output = 'default:food_pieapple_raw',
	recipe = {
	    {'', 'default:food_sugar', ''},
		{'default:apple', 'default:apple', 'default:apple'},
		{'', 'default:food_piedough', ''},
	}
})

minetest.register_craftitem("default:food_pieapple", {
	description = "American Pie(6)",
	inventory_image = "default_food_pieapple.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_pieapple",
	recipe = "default:food_pieapple_raw",
	cooktime = 5
})

-- Cocoba Pie

minetest.register_craftitem("default:food_piecocoba_raw", {
	description = "Cocoba Pie Raw (4)",
	inventory_image = "default_food_piecocoba_raw.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
    output = 'default:food_piecocoba_raw',
	recipe = {
	    {'', 'default:food_chocolate', ''},
		{'default:fruit_banana', 'default:fruit_coconut', 'default:fruit_banana'},
		{'', 'default:food_piedough', ''},
	}
})

minetest.register_craftitem("default:food_piecocoba", {
	description = "Cocoba Pie(6)",
	inventory_image = "default_food_piecocoba.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_piecocoba",
	recipe = "default:food_piecocoba_raw",
	cooktime = 5
})

-- Pineapple Pie 

minetest.register_craftitem("default:food_pieananas_raw", {
	description = "Pineapple Pie Raw (4)",
	inventory_image = "default_food_pieananas_raw.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
    output = 'default:food_pieananas_raw',
	recipe = {
	    {'', 'default:food_sugar', ''},
		{'farming:ananas', 'farming:ananas', 'farming:ananas'},
		{'', 'default:food_piedough', ''},
	}
})

minetest.register_craftitem("default:food_pieananas", {
	description = "Pineapple Pie(6)",
	inventory_image = "default_food_pieananas.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_pieananas",
	recipe = "default:food_pieananas_raw",
	cooktime = 5
})

-- Choco Pie

minetest.register_craftitem("default:food_piechoco_raw", {
	description = "Choco Pie Raw (4)",
	inventory_image = "default_food_piechoco_raw.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
    output = 'default:food_piechoco_raw',
	recipe = {
	    {'', 'default:food_sugar', ''},
		{'default:food_chocolate', 'default:food_chocolate', 'default:food_chocolate'},
		{'', 'default:food_piedough', ''},
	}
})

minetest.register_craftitem("default:food_piechoco", {
	description = "Choco Pie(6)",
	inventory_image = "default_food_piechoco.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_piechoco",
	recipe = "default:food_piechoco_raw",
	cooktime = 5
})

-- orange Pie

minetest.register_craftitem("default:food_pieorange_raw", {
	description = "Orange Pie Raw (4)",
	inventory_image = "default_food_pieorange_raw.png",
    on_use = minetest.item_eat(4),
})

minetest.register_craft({
    output = 'default:food_pieorange_raw',
	recipe = {
	    {'', 'default:food_sugar', ''},
		{'default:fruit_orange', 'default:fruit_orange', 'default:fruit_orange'},
		{'', 'default:food_piedough', ''},
	}
})

minetest.register_craftitem("default:food_pieorange", {
	description = "Orange Pie(6)",
	inventory_image = "default_food_pieorange.png",
    on_use = minetest.item_eat(6),
})

minetest.register_craft({
	type = "cooking",
	output = "default:food_pieorange",
	recipe = "default:food_pieorange_raw",
	cooktime = 5
})

-- energiebar

