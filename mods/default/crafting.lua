-- mods/default/crafting.lua

minetest.register_craft({
	output = 'default:wood 4',
	recipe = {
		{'default:tree'},
	}
})

minetest.register_craft({
	output = 'default:wood_jungle 4',
	recipe = {
		{'default:tree_jungle'},
	}
})

minetest.register_craft({
	output = 'default:wood_pine 4',
	recipe = {
		{'default:tree_pine'},
	}
})

minetest.register_craft({
	output = 'default:wood_palm 4',
	recipe = {
		{'default:tree_palm'},
	}
})

minetest.register_craft({
	output = 'default:wood_orange 4',
	recipe = {
		{'default:tree_orange'},
	}
})

minetest.register_craft({
	output = 'default:wood_olive 4',
	recipe = {
		{'default:tree_olive'},
	}
})

minetest.register_craft({
	output = 'default:wood_birch 4',
	recipe = {
		{'default:tree_birch'},
	}
})

minetest.register_craft({
	output = 'default:wood_poplar 4',
	recipe = {
		{'default:tree_poplar'},
	}
})

minetest.register_craft({
	output = 'default:wood_rubber 4',
	recipe = {
		{'default:tree_rubber'},
	}
})

minetest.register_craft({
	output = 'default:wood_ahorn 4',
	recipe = {
		{'default:tree_ahorn'},
	}
})

minetest.register_craft({
	output = 'default:wood_oak 4',
	recipe = {
		{'default:tree_oak'},
	}
})
--[[
minetest.register_craft({
	output = 'default:acacia_wood 4',
	recipe = {
		{'default:acacia_tree'},
	}
})
--]]
minetest.register_craft({
	output = 'default:stick 4',
	recipe = {
		{'group:wood'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood 2',
	recipe = {
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sign_wall',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:stick', ''},
	}
})

-- recipe already in torch.lua
-- minetest.register_craft({
-- 	output = 'default:torch 4',
-- 	recipe = {
-- 		{'default:coal_lump'},
-- 		{'group:stick'},
-- 	}
-- })

minetest.register_craft({
	output = 'default:pick_wood',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:pick_stone',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:pick_steel',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:pick_bronze',
	recipe = {
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:pick_mese',
	recipe = {
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:pick_diamond',
	recipe = {
		{'default:diamond', 'default:diamond', 'default:diamond'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:pick_nyan',
	recipe = {
		{'default:nyancat_rainbow', 'default:nyancat_rainbow', 'default:nyancat_rainbow'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

minetest.register_craft({
	output = 'default:shovel_wood',
	recipe = {
		{'group:wood'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:shovel_stone',
	recipe = {
		{'group:stone'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:shovel_steel',
	recipe = {
		{'default:steel_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:shovel_bronze',
	recipe = {
		{'default:bronze_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:shovel_mese',
	recipe = {
		{'default:mese_crystal'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:shovel_diamond',
	recipe = {
		{'default:diamond'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:shovel_nyan',
	recipe = {
		{'default:nyancat_rainbow'},
		{'default:steel_ingot'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'default:axe_wood',
	recipe = {
		{'group:wood', 'group:wood'},
		{'group:wood', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_stone',
	recipe = {
		{'group:stone', 'group:stone'},
		{'group:stone', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_steel',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_bronze',
	recipe = {
		{'default:bronze_ingot', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_mese',
	recipe = {
		{'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_diamond',
	recipe = {
		{'default:diamond', 'default:diamond'},
		{'default:diamond', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_nyan',
	recipe = {
		{'default:nyancat_rainbow', 'default:nyancat_rainbow'},
		{'default:nyancat_rainbow', 'default:steel_ingot'},
		{'', 'default:steel_ingot'},
	}
})


minetest.register_craft({
	output = 'default:sword_wood',
	recipe = {
		{'group:wood'},
		{'group:wood'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_stone',
	recipe = {
		{'group:stone'},
		{'group:stone'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_steel',
	recipe = {
		{'default:steel_ingot'},
		{'default:steel_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_bronze',
	recipe = {
		{'default:bronze_ingot'},
		{'default:bronze_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_mese',
	recipe = {
		{'default:mese_crystal'},
		{'default:mese_crystal'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_diamond',
	recipe = {
		{'default:diamond'},
		{'default:diamond'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:sword_nyan',
	recipe = {
		{'default:nyancat_rainbow'},
		{'default:nyancat_rainbow'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'default:rail 15',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', 'group:stick', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'default:chest',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'default:chest_locked',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'default:steel_ingot', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'default:furnace',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'group:stone', '', 'group:stone'},
		{'group:stone', 'group:stone', 'group:stone'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "default:bronze_ingot 2",
	recipe = {"default:tin_ingot", "default:copper_ingot"},
})

minetest.register_craft({
	output = 'default:coalblock',
	recipe = {
		{'default:coal_lump', 'default:coal_lump', 'default:coal_lump'},
		{'default:coal_lump', 'default:coal_lump', 'default:coal_lump'},
		{'default:coal_lump', 'default:coal_lump', 'default:coal_lump'},
	}
})

minetest.register_craft({
	output = 'default:coal_lump 9',
	recipe = {
		{'default:coalblock'},
	}
})

minetest.register_craft({
	output = 'default:steelblock',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'default:steel_ingot 9',
	recipe = {
		{'default:steelblock'},
	}
})

minetest.register_craft({
	output = 'default:tinblock',
	recipe = {
		{'default:tin_ingot', 'default:tin_ingot', 'default:tin_ingot'},
		{'default:tin_ingot', 'default:tin_ingot', 'default:tin_ingot'},
		{'default:tin_ingot', 'default:tin_ingot', 'default:tin_ingot'},
	}
})

minetest.register_craft({
	output = 'default:tin_ingot 9',
	recipe = {
		{'default:tinblock'},
	}
})

minetest.register_craft({
	output = 'default:copperblock',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
		{'default:copper_ingot', 'default:copper_ingot', 'default:copper_ingot'},
	}
})

minetest.register_craft({
	output = 'default:copper_ingot 9',
	recipe = {
		{'default:copperblock'},
	}
})

minetest.register_craft({
	output = 'default:bronzeblock',
	recipe = {
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
	}
})

minetest.register_craft({
	output = 'default:bronze_ingot 9',
	recipe = {
		{'default:bronzeblock'},
	}
})

minetest.register_craft({
	output = 'default:goldblock',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'default:gold_ingot 9',
	recipe = {
		{'default:goldblock'},
	}
})

minetest.register_craft({
	output = 'default:diamondblock',
	recipe = {
		{'default:diamond', 'default:diamond', 'default:diamond'},
		{'default:diamond', 'default:diamond', 'default:diamond'},
		{'default:diamond', 'default:diamond', 'default:diamond'},
	}
})

minetest.register_craft({
	output = 'default:diamond 9',
	recipe = {
		{'default:diamondblock'},
	}
})

minetest.register_craft({
	output = 'default:rubyblock',
	recipe = {
		{'default:ruby', 'default:ruby', 'default:ruby'},
		{'default:ruby', 'default:ruby', 'default:ruby'},
		{'default:ruby', 'default:ruby', 'default:ruby'},
	}
})

minetest.register_craft({
	output = 'default:ruby 9',
	recipe = {
		{'default:rubyblock'},
	}
})

minetest.register_craft({
	output = 'default:topazblock',
	recipe = {
		{'default:topaz', 'default:topaz', 'default:topaz'},
		{'default:topaz', 'default:topaz', 'default:topaz'},
		{'default:topaz', 'default:topaz', 'default:topaz'},
	}
})

minetest.register_craft({
	output = 'default:topaz 9',
	recipe = {
		{'default:topazblock'},
	}
})

minetest.register_craft({
	output = 'default:emeraldblock',
	recipe = {
		{'default:emerald', 'default:emerald', 'default:emerald'},
		{'default:emerald', 'default:emerald', 'default:emerald'},
		{'default:emerald', 'default:emerald', 'default:emerald'},
	}
})

minetest.register_craft({
	output = 'default:emerald 9',
	recipe = {
		{'default:emeraldblock'},
	}
})

minetest.register_craft({
	output = 'default:sapphireblock',
	recipe = {
		{'default:sapphire', 'default:sapphire', 'default:sapphire'},
		{'default:sapphire', 'default:sapphire', 'default:sapphire'},
		{'default:sapphire', 'default:sapphire', 'default:sapphire'},
	}
})

minetest.register_craft({
	output = 'default:sapphire 9',
	recipe = {
		{'default:sapphireblock'},
	}
})

minetest.register_craft({
	output = 'default:amethystblock',
	recipe = {
		{'default:amethyst', 'default:amethyst', 'default:amethyst'},
		{'default:amethyst', 'default:amethyst', 'default:amethyst'},
		{'default:amethyst', 'default:amethyst', 'default:amethyst'},
	}
})

minetest.register_craft({
	output = 'default:amethyst 9',
	recipe = {
		{'default:amethystblock'},
	}
})

minetest.register_craft({
	output = 'default:nyancat_rainbow',
	recipe = {
		{'default:ruby', 'default:topaz', 'default:mese_crystal'},
		{'default:emerald', 'default:diamond', 'default:sapphire'},
		{'default:amethyst', '', ''},
	}
})


--cactusnodes

minetest.register_craft({
	output = 'default:cactus_block',
	recipe = {
		{'default:cactus', 'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:cactus', 'default:cactus'},
	}
})

minetest.register_craft({
	output = 'default:cactus 9',
	recipe = {
		{'default:cactus_block'},
	}
})

minetest.register_craft({
	output = 'default:cactus_brick 4',
	recipe = {
		{'default:cactus', 'default:cactus'},
		{'default:cactus', 'default:cactus'},
	}
})

----

minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{'group:leaves', 'group:sand', 'group:leaves'},
	}
})

minetest.register_craft({
	output = 'default:sandstone',
	recipe = {
		{'group:sand', 'group:sand'},
		{'group:sand', 'group:sand'},
	}
})

minetest.register_craft({
	output = 'default:sand 4',
	recipe = {
		{'default:sandstone'},
	}
})

minetest.register_craft({
	output = 'default:sandstonebrick 4',
	recipe = {
		{'default:sandstone', 'default:sandstone'},
		{'default:sandstone', 'default:sandstone'},
	}
})

minetest.register_craft({
	output = 'default:clay',
	recipe = {
		{'default:clay_lump', 'default:clay_lump'},
		{'default:clay_lump', 'default:clay_lump'},
	}
})

minetest.register_craft({
	output = 'default:clay_lump 4',
	recipe = {
		{'default:clay'},
	}
})

minetest.register_craft({
	output = 'default:brick',
	recipe = {
		{'default:clay_brick', 'default:clay_brick'},
		{'default:clay_brick', 'default:clay_brick'},
	}
})

minetest.register_craft({
	output = 'default:clay_brick 4',
	recipe = {
		{'default:brick'},
	}
})

-- Color Bricks

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_black',
	recipe =
		{'group:claybricks', 'dye:black'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_blue',
	recipe =
		{'group:claybricks', 'dye:blue'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_brown',
	recipe =
		{'group:claybricks', 'dye:brown'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_cyan',
	recipe =
		{'group:claybricks', 'dye:cyan'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_dark_green',
	recipe =
		{'group:claybricks', 'dye:dark_green'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_dark_grey',
	recipe =
		{'group:claybricks', 'dye:dark_grey'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_green',
	recipe =
		{'group:claybricks', 'dye:green'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_grey',
	recipe =
		{'group:claybricks', 'dye:grey'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_magenta',
	recipe =
		{'group:claybricks', 'dye:magenta'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_orange',
	recipe =
		{'group:claybricks', 'dye:orange'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_pink',
	recipe =
		{'group:claybricks', 'dye:pink'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_red',
	recipe =
		{'group:claybricks', 'dye:red'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_violet',
	recipe =
		{'group:claybricks', 'dye:violet'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_white',
	recipe =
		{'group:claybricks', 'dye:white'},

})

minetest.register_craft({
    type = "shapeless",
	output = 'default:brick_yellow',
	recipe =
		{'group:claybricks', 'dye:yellow'},

})
-----

-- Colored Wood

minetest.register_craft({
	output = 'default:colwood_black',
	recipe = {
		{'group:wood', 'dye:black'},
	}
})

minetest.register_craft({
	output = 'default:colwood_blue',
	recipe = {
		{'group:wood', 'dye:blue'},
	}
})

minetest.register_craft({
	output = 'default:colwood_brown',
	recipe = {
		{'group:wood', 'dye:brown'},
	}
})

minetest.register_craft({
	output = 'default:colwood_cyan',
	recipe = {
		{'group:wood', 'dye:cyan'},
	}
})

minetest.register_craft({
	output = 'default:colwood_dark_green',
	recipe = {
		{'group:wood', 'dye:dark_green'},
	}
})

minetest.register_craft({
	output = 'default:colwood_dark_grey',
	recipe = {
		{'group:wood', 'dye:dark_grey'},
	}
})

minetest.register_craft({
	output = 'default:colwood_green',
	recipe = {
		{'group:wood', 'dye:green'},
	}
})

minetest.register_craft({
	output = 'default:colwood_grey',
	recipe = {
		{'group:wood', 'dye:grey'},
	}
})

minetest.register_craft({
	output = 'default:colwood_magenta',
	recipe = {
		{'group:wood', 'dye:magenta'},
	}
})

minetest.register_craft({
	output = 'default:colwood_orange',
	recipe = {
		{'group:wood', 'dye:orange'},
	}
})

minetest.register_craft({
	output = 'default:colwood_pink',
	recipe = {
		{'group:wood', 'dye:pink'},
	}
})

minetest.register_craft({
	output = 'default:colwood_red',
	recipe = {
		{'group:wood', 'dye:red'},
	}
})

minetest.register_craft({
	output = 'default:colwood_violet',
	recipe = {
		{'group:wood', 'dye:violet'},
	}
})

minetest.register_craft({
	output = 'default:colwood_white',
	recipe = {
		{'group:wood', 'dye:white'},
	}
})

minetest.register_craft({
	output = 'default:colwood_yellow',
	recipe = {
		{'group:wood', 'dye:yellow'},
	}
})

-- Colored fences

minetest.register_craft({
	output = 'default:fence_wood_black',
	recipe = {
		{'group:woodfence', 'dye:black'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_blue',
	recipe = {
		{'group:woodfence', 'dye:blue'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_brown',
	recipe = {
		{'group:woodfence', 'dye:brown'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_cyan',
	recipe = {
		{'group:woodfence', 'dye:cyan'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_dark_green',
	recipe = {
		{'group:woodfence', 'dye:dark_green'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_dark_grey',
	recipe = {
		{'group:woodfence', 'dye:dark_grey'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_green',
	recipe = {
		{'group:woodfence', 'dye:green'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_grey',
	recipe = {
		{'group:woodfence', 'dye:grey'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_magenta',
	recipe = {
		{'group:woodfence', 'dye:magenta'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_orange',
	recipe = {
		{'group:woodfence', 'dye:orange'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_pink',
	recipe = {
		{'group:woodfence', 'dye:pink'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_red',
	recipe = {
		{'group:woodfence', 'dye:red'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_violet',
	recipe = {
		{'group:woodfence', 'dye:violet'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_white',
	recipe = {
		{'group:woodfence', 'dye:white'},
	}
})

minetest.register_craft({
	output = 'default:fence_wood_yellow',
	recipe = {
		{'group:woodfence', 'dye:yellow'},
	}
})


-----

minetest.register_craft({
	output = 'default:lamp_ceiling 2',
	recipe = {
		{'default:glass', 'default:torch', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'default:lamp_wall 2',
	recipe = {
		{'default:glass', '', ''},
		{'default:torch', '', ''},
		{'default:glass', '', ''},
	}
})

minetest.register_craft({
	output = 'default:lamp_column 2',
	recipe = {
		{'default:torch', 'default:glass', ''},
		{'default:glass', '', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'default:latern 2',
	recipe = {
		{'', 'default:bronze_ingot', ''},
		{'default:glass', 'default:torch', 'default:glass'},
		{'', 'default:bronze_ingot', ''},
	}
})

minetest.register_craft({
	output = 'default:laternrusty 2',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'default:glass', 'default:torch', 'default:glass'},
		{'', 'default:steel_ingot', ''},
	}
})

---


minetest.register_craft({
	output = 'default:paper',
	recipe = {
		{'default:papyrus', 'default:papyrus', 'default:papyrus'},
	}
})

minetest.register_craft({
	output = 'default:book',
	recipe = {
		{'default:paper'},
		{'default:paper'},
		{'default:paper'},
	}
})

minetest.register_craft({
	output = 'default:bookshelf',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'default:book', 'default:book', 'default:book'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'default:ladder 2',
	recipe = {
		{'group:stick', '', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', '', 'group:stick'},
	}
})

minetest.register_craft({
	        output = "default:chains 18",
	        recipe = {
		        {"default:steel_ingot", "", "default:steel_ingot", },
				{"default:steel_ingot", "", "default:steel_ingot", },
				{"default:steel_ingot", "", "default:steel_ingot", },
	        }
	})

minetest.register_craft({
	output = 'default:mese',
	recipe = {
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
	}
})

minetest.register_craft({
	output = 'default:mese_crystal 9',
	recipe = {
		{'default:mese'},
	}
})

minetest.register_craft({
	output = 'default:mese_crystal_fragment 9',
	recipe = {
		{'default:mese_crystal'},
	}
})

minetest.register_craft({
	output = 'default:obsidian_shard 9',
	recipe = {
		{'default:obsidian'}
	}
})

minetest.register_craft({
	output = 'default:obsidian',
	recipe = {
		{'default:obsidian_shard', 'default:obsidian_shard', 'default:obsidian_shard'},
		{'default:obsidian_shard', 'default:obsidian_shard', 'default:obsidian_shard'},
		{'default:obsidian_shard', 'default:obsidian_shard', 'default:obsidian_shard'},
	}
})

minetest.register_craft({
	output = 'default:obsidianbrick 4',
	recipe = {
		{'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian'}
	}
})

minetest.register_craft({
	output = 'default:stonebrick 4',
	recipe = {
		{'default:stone', 'default:stone'},
		{'default:stone', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'default:granite_brick 4',
	recipe = {
		{'default:granite', 'default:granite'},
		{'default:granite', 'default:granite'},
	}
})

minetest.register_craft({
	output = 'default:marble_brick 4',
	recipe = {
		{'default:marble', 'default:marble'},
		{'default:marble', 'default:marble'},
	}
})

minetest.register_craft({
	output = 'default:desert_stonebrick 4',
	recipe = {
		{'default:desert_stone', 'default:desert_stone'},
		{'default:desert_stone', 'default:desert_stone'},
	}
})

minetest.register_craft({
	output = 'default:snowblock',
	recipe = {
		{'default:snow', 'default:snow', 'default:snow'},
		{'default:snow', 'default:snow', 'default:snow'},
		{'default:snow', 'default:snow', 'default:snow'},
	}
})

minetest.register_craft({
	output = 'default:snow 9',
	recipe = {
		{'default:snowblock'},
	}
})

-- Stoneblocks

minetest.register_craft({
	output = 'default:stone_block',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
		{'default:stone', 'default:stone', 'default:stone'},
		{'default:stone', 'default:stone', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'default:stone 9',
	recipe = {
		{'default:stone_block'}
	}
})


minetest.register_craft({
	output = 'default:desert_stone_block',
	recipe = {
		{'default:desert_stone', 'default:desert_stone', 'default:desert_stone'},
		{'default:desert_stone', 'default:desert_stone', 'default:desert_stone'},
		{'default:desert_stone', 'default:desert_stone', 'default:desert_stone'},
	}
})

minetest.register_craft({
	output = 'default:desert_stone 9',
	recipe = {
		{'default:desert_stone_block'}
	}
})


minetest.register_craft({
	output = 'default:granite_block',
	recipe = {
		{'default:granite', 'default:granite', 'default:granite'},
		{'default:granite', 'default:granite', 'default:granite'},
		{'default:granite', 'default:granite', 'default:granite'},
	}
})

minetest.register_craft({
	output = 'default:granite 9',
	recipe = {
		{'default:granite_block'}
	}
})

minetest.register_craft({
	output = 'default:marble_block',
	recipe = {
		{'default:marble', 'default:marble', 'default:marble'},
		{'default:marble', 'default:marble', 'default:marble'},
		{'default:marble', 'default:marble', 'default:marble'},
	}
})

minetest.register_craft({
	output = 'default:marble 9',
	recipe = {
		{'default:marble_block'}
	}
})

-- cobble

minetest.register_craft({
	output = 'default:cobble 5',
	recipe = {
		{'default:stone', '', 'default:stone'},
		{'', 'default:stone', ''},
		{'default:stone', '', 'default:stone'},
	}
})

minetest.register_craft({
	output = 'default:gravel 5',
	recipe = {
		{'default:cobble', '', 'default:cobble'},
		{'', 'default:cobble', ''},
		{'default:cobble', '', 'default:cobble'},
	}
})

minetest.register_craft({
	output = 'default:sand 5',
	recipe = {
		{'default:gravel', '', 'default:gravel'},
		{'', 'default:gravel', ''},
		{'default:gravel', '', 'default:gravel'},
	}
})

minetest.register_craft({
	output = 'default:desert_cobble 5',
	recipe = {
		{'default:desert_stone', '', 'default:desert_stone'},
		{'', 'default:desert_stone', ''},
		{'default:desert_stone', '', 'default:desert_stone'},
	}
})

minetest.register_craft({
	output = 'default:desert_gravel 5',
	recipe = {
		{'default:desert_cobble', '', 'default:desert_cobble'},
		{'', 'default:desert_cobble', ''},
		{'default:desert_cobble', '', 'default:desert_cobble'},
	}
})

minetest.register_craft({
	output = 'default:desert_sand 5',
	recipe = {
		{'default:desert_gravel', '', 'default:desert_gravel'},
		{'', 'default:desert_gravel', ''},
		{'default:desert_gravel', '', 'default:desert_gravel'},
	}
})

--
--FLooRS
--

minetest.register_craft({
	output = 'default:floor_granite 4',
	recipe = {
		{'default:granite_brick', 'default:granite_brick'},
		{'default:granite_brick', 'default:granite_brick'},
	}
})

minetest.register_craft({
	output = 'default:floor_stone 4',
	recipe = {
		{'default:stonebrick', 'default:stonebrick'},
		{'default:stonebrick', 'default:stonebrick'},
	}
})

minetest.register_craft({
	output = 'default:floor_desertstone 4',
	recipe = {
		{'default:desert_stonebrick', 'default:desert_stonebrick'},
		{'default:desert_stonebrick', 'default:desert_stonebrick'},
	}
})

minetest.register_craft({
	output = 'default:floor_sandstone 4',
	recipe = {
		{'default:sandstonebrick', 'default:sandstonebrick'},
		{'default:sandstonebrick', 'default:sandstonebrick'},
	}
})

minetest.register_craft({
	output = 'default:floor_marble 4',
	recipe = {
		{'default:marble_brick', 'default:marble_brick'},
		{'default:marble_brick', 'default:marble_brick'},
	}
})

-- wooden floors
minetest.register_craft({
	output = 'default:floor_w_wood 8',
	recipe = {
		{'default:tree', 'default:wood'},
		{'default:wood', 'default:tree'},
	}
})

minetest.register_craft({
	output = 'default:floor_w_oakolive 4',
	recipe = {
		{'default:wood_oak', 'default:wood_olive'},
		{'default:wood_olive', 'default:wood_oak'},
	}
})

minetest.register_craft({
	output = 'default:floor_w_junglebirch 4',
	recipe = {
		{'default:wood_jungle', 'default:wood_birch'},
		{'default:wood_birch', 'default:wood_jungle'},
	}
})


minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_sanddesertstone 2',
	recipe =
		{'default:floor_sandstone', 'default:floor_desertstone'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_stonegranite 2',
	recipe =
		{'default:floor_stone', 'default:floor_granite'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_yellow',
	recipe =
		{'group:sfloors', 'dye:yellow'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_white',
	recipe =
		{'group:sfloors', 'dye:white'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_violet',
	recipe =
		{'group:sfloors', 'dye:violet'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_red',
	recipe =
		{'group:sfloors', 'dye:red'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_pink',
	recipe =
		{'group:sfloors', 'dye:pink'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_orange',
	recipe =
		{'group:sfloors', 'dye:orange'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_magenta',
	recipe =
		{'group:sfloors', 'dye:magenta'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_green',
	recipe =
		{'group:sfloors', 'dye:green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_dark_green',
	recipe =
		{'group:sfloors', 'dye:dark_green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_cyan',
	recipe =
		{'group:sfloors', 'dye:cyan'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_brown',
	recipe =
		{'group:sfloors', 'dye:brown'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_blue',
	recipe =
		{'group:sfloors', 'dye:blue'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_black',
	recipe =
		{'group:sfloors', 'dye:black'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_blackwhite',
	recipe =
		{'group:sfloors', 'dye:black', 'dye:white'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_whiteblue',
	recipe =
		{'group:sfloors', 'dye:blue', 'dye:white'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_blueyellow',
	recipe =
		{'group:sfloors', 'dye:blue', 'dye:yellow'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_yellowgreen',
	recipe =
		{'group:sfloors', 'dye:dark_green', 'dye:yellow'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_greengreen',
	recipe =
		{'group:sfloors', 'dye:dark_green', 'dye:green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_magentacyan',
	recipe =
		{'group:sfloors', 'dye:magenta', 'dye:cyan'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_cyanblue',
	recipe =
		{'group:sfloors', 'dye:blue', 'dye:cyan'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_redorange',
	recipe =
		{'group:sfloors', 'dye:red', 'dye:orange'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_greenblack',
	recipe =
		{'group:sfloors', 'dye:green', 'dye:black'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_blackviolet',
	recipe =
		{'group:sfloors', 'dye:violet', 'dye:black'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_yellowred',
	recipe =
		{'group:sfloors', 'dye:yellow', 'dye:red'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_whitered',
	recipe =
		{'group:sfloors', 'dye:white', 'dye:red'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_greenviolet',
	recipe =
		{'group:sfloors', 'dye:green', 'dye:violet'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:floor_s_violetyellow',
	recipe =
		{'group:sfloors', 'dye:yellow', 'dye:violet'},
})

--

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_black',
	recipe =
		{'group:swall', 'dye:black'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_blue',
	recipe =
		{'group:swall', 'dye:blue'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_brown',
	recipe =
		{'group:swall', 'dye:brown'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_cyan',
	recipe =
		{'group:swall', 'dye:cyan'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_dark_green',
	recipe =
		{'group:swall', 'dye:dark_green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_green',
	recipe =
		{'group:swall', 'dye:green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_magenta',
	recipe =
		{'group:swall', 'dye:magenta'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_orange',
	recipe =
		{'group:swall', 'dye:orange'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_pink',
	recipe =
		{'group:swall', 'dye:pink'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_red',
	recipe =
		{'group:swall', 'dye:red'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_violet',
	recipe =
		{'group:swall', 'dye:violet'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_white',
	recipe =
		{'group:swall', 'dye:white'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_yellow',
	recipe =
		{'group:swall', 'dye:yellow'},
})
--[[
minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_blackwhite',
	recipe =
		{'group:swall', 'dye:white', 'dye:black'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_blueyellow',
	recipe =
		{'group:swall', 'dye:blue', 'dye:yellow'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_cyanblue',
	recipe =
		{'group:swall', 'dye:blue', 'dye:cyan'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_greenblack',
	recipe =
		{'group:swall', 'dye:green', 'dye:black'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_greengreen',
	recipe =
		{'group:swall', 'dye:green', 'dye:dark_green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_greenviolet',
	recipe =
		{'group:swall', 'dye:green', 'dye:violet'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_magentacyan',
	recipe =
		{'group:swall', 'dye:magenta', 'dye:cyan'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_redorange',
	recipe =
		{'group:swall', 'dye:red', 'dye:orange'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_violetyellow',
	recipe =
		{'group:swall', 'dye:violet', 'dye:yellow'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_whiteblue',
	recipe =
		{'group:swall', 'dye:white', 'dye:blue'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_whitered',
	recipe =
		{'group:swall', 'dye:white', 'dye:red'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_yellowgreen',
	recipe =
		{'group:swall', 'dye:yellow', 'dye:dark_green'},
})

minetest.register_craft({
    type = "shapeless",
	output = 'default:stonewall_yellowred',
	recipe =
		{'group:swall', 'dye:yellow', 'dye:red'},
})
--]]



--
-- Crafting (tool repair)
--
minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})

--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "default:glass",
	recipe = "group:sand",
})

minetest.register_craft({
	type = "cooking",
	output = "default:obsidian_glass",
	recipe = "default:obsidian_shard",
})

minetest.register_craft({
	type = "cooking",
	output = "default:stone",
	recipe = "default:cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "default:cobble",
	recipe = "default:gravel",
})

minetest.register_craft({
	type = "cooking",
	output = "default:stone",
	recipe = "default:mossycobble",
})

minetest.register_craft({
	type = "cooking",
	output = "default:desert_stone",
	recipe = "default:desert_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "default:desert_cobble",
	recipe = "default:desert_gravel",
})

minetest.register_craft({
	type = "cooking",
	output = "default:steel_ingot",
	recipe = "default:iron_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:copper_ingot",
	recipe = "default:copper_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:tin_ingot",
	recipe = "default:tin_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:gold_ingot",
	recipe = "default:gold_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:clay_brick",
	recipe = "default:clay_lump",
	--cooktime = 20,
})

--
-- Fuels
--

minetest.register_craft({
	type = "fuel",
	recipe = "group:tree",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:junglegrass",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:leaves",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:cactus",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:papyrus",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:bookshelf",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_wood",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:ladder",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:lava_source",
	burntime = 60,
})

-- recipe already in torch.lua
-- minetest.register_craft({
-- 	type = "fuel",
-- 	recipe = "default:torch",
-- 	burntime = 4,
-- })

minetest.register_craft({
	type = "fuel",
	recipe = "default:sign_wall",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:chest",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:chest_locked",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:nyancat",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:nyancat_rainbow",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:sapling",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:apple",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:coal_lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:coalblock",
	burntime = 370,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:sapling_jungle",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:sapling_pine",
	burntime = 10,
})

minetest.register_craft({
	output = 'beds:fancy_bed',
	recipe = {
		{"wool:red", "wool:white", "group:stick"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	output = 'beds:bed',
	recipe = {
		{"wool:red", "wool:red", "wool:white"},
		{"group:wood", "group:wood", "group:wood"},
	}
})
