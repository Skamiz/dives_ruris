-- Global farming namespace
farming = {}
farming.path = minetest.get_modpath("farming")

-- Load files
dofile(farming.path .. "/api.lua")
dofile(farming.path .. "/nodes.lua")
dofile(farming.path .. "/hoes.lua")

-- WHEAT
farming.register_plant("farming:wheat", {
	description = "Wheat seed",
	inventory_image = "farming_wheat_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"}
})
minetest.register_craftitem("farming:flour", {
	description = "Flour",
	inventory_image = "farming_flour.png",
})

minetest.register_craftitem("farming:bread", {
	description = "Bread (3)",
	inventory_image = "farming_bread.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour 1",
	recipe = {"farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat", "farming:seed_wheat"}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:seed_wheat 3",
	recipe = {"farming:wheat"}
})

minetest.register_craft({
	type = "cooking",
	--cooktime = 10,
	output = "farming:bread",
	recipe = "farming:flour"
})

-- Cotton
farming.register_plant("farming:cotton", {
	description = "Cotton seed",
	inventory_image = "farming_cotton_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

minetest.register_alias("farming:string", "farming:cotton")

minetest.register_craft({
	output = "wool:white",
	recipe = {
		{"farming:cotton", "farming:cotton"},
		{"farming:cotton", "farming:cotton"},
	}
})

-- Straw
minetest.register_craft({
    type = "shapeless",
	output = "farming:straw",
	recipe = {"farming:wheat", "farming:wheat", "farming:wheat", "farming:wheat"}
})

minetest.register_craft({
	output = "farming:wheat 4",
	recipe = {
		{"farming:straw"},
	}
})

--
-- glunggifood
--

-- onion
farming.register_plant("farming:onion", {
	description = "Onion Seed",
	inventory_image = "farming_onion_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:tomato", {
	description = "Tomato Seed",
	inventory_image = "farming_tomato_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:mushroom", {
	description = "Mushroom Spore",
	inventory_image = "farming_mushroom_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:salad", {
	description = "Salad Seed",
	inventory_image = "farming_salad_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:potato", {
	description = "Potato Seed",
	inventory_image = "farming_potato_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:strawberry", {
	description = "Strawberry Seed",
	inventory_image = "farming_strawberry_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:ananas", {
	description = "Pineapple Seed",
	inventory_image = "farming_ananas_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:corn", {
	description = "Corn Seed",
	inventory_image = "farming_corn_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:pepper", {
	description = "Pepper Seed",
	inventory_image = "farming_pepper_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:carrot", {
	description = "Carrot Seed",
	inventory_image = "farming_carrot_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

farming.register_plant("farming:beens", {
	description = "Beens Seed",
	inventory_image = "farming_beens_seed.png",
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland", "desert"}
})