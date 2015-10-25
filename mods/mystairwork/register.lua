
 --[[ 
 mystairwork.register_all   ( 
	mat, 
	desc, 
	image, 
	groups, 
	craft, 
	sounds
	)
	--]]


mystairwork.register_all(
	"default_sandstone", 
	"Sandstone", 
	"default_sandstone.png",
	{crumbly=2,cracky=2, not_in_creative_inventory=1},
	"default:sandstone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_clay", 
	"Clay", 
	"default_clay.png",
	{crumbly=3, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	"default:clay",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_cobble", 
	"Cobble", 
	"default_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:cobble",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_desert_cobble", 
	"Desert Cobblestone", 
	"default_desert_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:desert_cobble",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stone", 
	"Stone", 
	"default_stone.png",
	{cracky = 3,not_in_creative_inventory=1},
	"default:stone",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_cactus", 
	"Cactus", 
	"default_cactus_side.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_cactus_block", 
	"Cactus Block", 
	"default_cactus_block.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus_block",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_cactus_brick", 
	"Cactus Brick", 
	"default_cactus_brick.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus_brick",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_desert_stone", 
	"Desert Stone", 
	"default_desert_stone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:desert_stone",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_desert_stone_brick", 
	"Desert Stone Brick", 
	"default_desert_stone_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:desert_stonebrick",
	default.node_sound_stone_defaults()
	)	
	
mystairwork.register_all(
	"default_wood", 
	"Wood", 
	"default_wood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_pinewood", 
	"Pine Wood", 
	"default_pinewood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:pinewood",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_brick", 
	"Brick", 
	"default_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_ice", 
	"Ice", 
	"default_ice.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:ice",
	default.node_sound_glass_defaults()
	)

mystairwork.register_all(
	"default_junglewood", 
	"Jungle Wood", 
	"default_junglewood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:junglewood",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_mossycobble", 
	"Mossy Cobble", 
	"default_mossycobble.png",
	{cracky = 3,not_in_creative_inventory=1},
	"default:mossycobble",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_obsidian", 
	"Obsidian", 
	"default_obsidian.png",
	{cracky=1,level=2,not_in_creative_inventory=1},
	"default:obsidian",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_obsidian_brick", 
	"Obsidian Brick", 
	"default_obsidian_brick.png",
	{cracky=1,level=2,not_in_creative_inventory=1},
	"default:obsidianbrick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_sandstone_brick", 
	"Sandstone Brick", 
	"default_sandstone_brick.png",
	{crumbly=2,cracky=2,not_in_creative_inventory=1}, 
	"default:sandstonebrick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_stone_brick", 
	"Stone Brick", 
	"default_stone_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonebrick",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_snow", 
	"Snow Block", 
	"default_snow.png",
	{crumbly=3,not_in_creative_inventory=1},
	"default:snowblock",
	default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	})
	)
	
--------------------------
-- Planet Glunggi

mystairwork.register_all(
	"default_wood_palm", 
	"Palm Wood", 
	"default_wood_palm.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_palm",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_wood_orange", 
	"Orange Wood", 
	"default_wood_orange.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_orange",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_wood_olive", 
	"Olive Wood", 
	"default_wood_olive.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_olive",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_wood_birch", 
	"Birch Wood", 
	"default_wood_birch.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_birch",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_wood_poplar", 
	"Poplar Wood", 
	"default_wood_poplar.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_poplar",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_wood_rubber", 
	"Rubber Wood", 
	"default_wood_rubber.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_rubber",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_wood_oak", 
	"Oak Wood", 
	"default_wood_oak.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_oak",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_wood_ahorn", 
	"Ahorn Wood", 
	"default_wood_ahorn.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_ahorn",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_wood_pine", 
	"Pine Wood", 
	"default_wood_pine.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_pine",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_wood_jungle", 
	"Jungle Wood", 
	"default_wood_jungle.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_jungle",
	default.node_sound_wood_defaults()
	)
	
-- wooden floors

mystairwork.register_all(
	"default_floor_w_wood", 
	"Wooden Floor", 
	"default_floor_w_wood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:floor_w_wood",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_floor_w_oakolive", 
	"Oak & Olivetree Wood Floor", 
	"default_floor_w_oakolive.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:floor_w_oakolive",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_floor_w_junglebirch", 
	"Jungle & Birch Wood Floor", 
	"default_floor_w_junglebirch.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:floor_w_junglebirch",
	default.node_sound_wood_defaults()
	)

-- colored woods	
	
mystairwork.register_all(
	"default_colwood_black", 
	"Black Colored Wood", 
	"default_colwood_black.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_black",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_colwood_blue", 
	"Blue Colored Wood", 
	"default_colwood_blue.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_blue",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_colwood_brown", 
	"Brown Colored Wood", 
	"default_colwood_brown.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_brown",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_colwood_cyan", 
	"Cyan Colored Wood", 
	"default_colwood_cyan.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_cyan",
	default.node_sound_wood_defaults()
	)
	
mystairwork.register_all(
	"default_colwood_dark_green", 
	"Darkgreen Colored Wood", 
	"default_colwood_dark_green.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_dark_green",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"default_colwood_dark_grey", 
	"Darkgrey Colored Wood", 
	"default_colwood_dark_grey.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_dark_grey",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_grey", 
	"Grey Colored Wood", 
	"default_colwood_grey.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_grey",
	default.node_sound_wood_defaults()
	)	

mystairwork.register_all(
	"default_colwood_green", 
	"Green Colored Wood", 
	"default_colwood_green.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_green",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_magenta", 
	"Magenta Colored Wood", 
	"default_colwood_magenta.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_magenta",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_orange", 
	"Orange Colored Wood", 
	"default_colwood_orange.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_orange",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_pink", 
	"Pink Colored Wood", 
	"default_colwood_pink.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_pink",
	default.node_sound_wood_defaults()
	)	

mystairwork.register_all(
	"default_colwood_red", 
	"Red Colored Wood", 
	"default_colwood_red.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_red",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_violet", 
	"Violet Colored Wood", 
	"default_colwood_violet.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_violet",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_white", 
	"White Colored Wood", 
	"default_colwood_white.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_white",
	default.node_sound_wood_defaults()
	)	
	
mystairwork.register_all(
	"default_colwood_yellow", 
	"yellow Colored Wood", 
	"default_colwood_yellow.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_yellow",
	default.node_sound_wood_defaults()
	)	
	
-------------------
-- Colored Bricks

mystairwork.register_all(
	"default_brick_black", 
	"Black Colored Bricks", 
	"default_brick_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_black",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_blue", 
	"Blue Colored Bricks", 
	"default_brick_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_blue",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_brown", 
	"Brown Colored Bricks", 
	"default_brick_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_brown",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_cyan", 
	"Cyan Colored Bricks", 
	"default_brick_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_cyan",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_dark_green", 
	"Darkgreen Colored Bricks", 
	"default_brick_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_dark_green",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_dark_grey", 
	"Darkgrey Colored Bricks", 
	"default_brick_dark_grey.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_dark_grey",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_green", 
	"Green Colored Bricks", 
	"default_brick_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_green",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_grey", 
	"Grey Colored Bricks", 
	"default_brick_grey.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_grey",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_magenta", 
	"Magenta Colored Bricks", 
	"default_brick_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_magenta",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_orange", 
	"Orange Colored Bricks", 
	"default_brick_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_orange",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_pink", 
	"Pink Colored Bricks", 
	"default_brick_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_pink",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_red", 
	"Red Colored Bricks", 
	"default_brick_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_red",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_violet", 
	"Violet Colored Bricks", 
	"default_brick_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_violet",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_brick_white", 
	"White Colored Bricks", 
	"default_brick_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_white",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_brick_yellow", 
	"Yellow Colored Bricks", 
	"default_brick_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_yellow",
	default.node_sound_stone_defaults()
	)
	
--more stones	
mystairwork.register_all(
	"default_granite_brick", 
	"Granite Brick", 
	"default_granite_brick.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:granite_brick",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_granite", 
	"Granite", 
	"default_granite.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:granite",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_marble_brick", 
	"Marble Brick", 
	"default_marble_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:marble_brick",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_marble", 
	"Marble", 
	"default_marble.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:marble",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_granite", 
	"Granite Floor", 
	"default_floor_granite.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:floor_granite",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_stone", 
	"Stone Floor", 
	"default_floor_stone.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:floor_stone",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_desertstone", 
	"Desertstone Floor", 
	"default_floor_desertstone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_desertstone",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_sanddesertstone", 
	"Sand- & Desert-Stone Floor", 
	"default_floor_sanddesertstone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_sanddesertstone",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_stonegranite", 
	"Stone- & Granite Floor", 
	"default_floor_stonegranite.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_stonegranite",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_floor_sandstone", 
	"Sandstone Floor", 
	"default_floor_sandstone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_sandstone",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_marble", 
	"Marble Floor", 
	"default_floor_marble.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_marble",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_yellow", 
	"Yellow Floor", 
	"default_floor_s_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_yellow",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_white", 
	"White Floor", 
	"default_floor_s_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_white",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_floor_s_violet", 
	"Violet Floor", 
	"default_floor_s_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_violet",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_red", 
	"Red Floor", 
	"default_floor_s_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_red",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_pink", 
	"Pink Floor", 
	"default_floor_s_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_pink",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_orange", 
	"Orange Floor", 
	"default_floor_s_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_orange",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_magenta", 
	"Magenta Floor", 
	"default_floor_s_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_magenta",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_green", 
	"Green Floor", 
	"default_floor_s_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_green",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_dark_green", 
	"Darkgreen Floor", 
	"default_floor_s_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_dark_green",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_cyan", 
	"Cyan Floor", 
	"default_floor_s_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_cyan",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_brown", 
	"Brown Floor", 
	"default_floor_s_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_brown",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_blue", 
	"Blue Floor", 
	"default_floor_s_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blue",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_black", 
	"Black Floor", 
	"default_floor_s_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_black",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_blackwhite", 
	"Black n White Floor", 
	"default_floor_s_blackwhite.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blackwhite",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_whiteblue", 
	"Blue n White Floor", 
	"default_floor_s_whiteblue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_whiteblue",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_blueyellow", 
	"Blue n Yellow Floor", 
	"default_floor_s_blueyellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blueyellow",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_yellowgreen", 
	"Green n Yellow Floor", 
	"default_floor_s_yellowgreen.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_yellowgreen",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_greengreen", 
	"Light n Dark Green Floor", 
	"default_floor_s_greengreen.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_greengreen",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_magentacyan", 
	"Magenta n Cyan Floor", 
	"default_floor_s_magentacyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_magentacyan",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_cyanblue", 
	"Blue n Cyan Floor", 
	"default_floor_s_cyanblue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_cyanblue",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_redorange", 
	"Red n Orange Floor", 
	"default_floor_s_redorange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_redorange",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_greenblack", 
	"Green n Black Floor", 
	"default_floor_s_greenblack.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_greenblack",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_blackviolet", 
	"Violet n Black Floor", 
	"default_floor_s_blackviolet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blackviolet",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_yellowred", 
	"Yellow n Red Floor", 
	"default_floor_s_yellowred.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_yellowred",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_whitered", 
	"White n Red Floor", 
	"default_floor_s_whitered.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_whitered",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_greenviolet", 
	"Green n Violet Floor", 
	"default_floor_s_greenviolet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_greenviolet",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_floor_s_violetyellow", 
	"Yellow n Violet Floor", 
	"default_floor_s_violetyellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_violetyellow",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_yellow", 
	"Yellow Stonewall", 
	"default_stonewall_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_yellow",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_white", 
	"White Stonewall", 
	"default_stonewall_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_white",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_violet", 
	"Violet Stonewall", 
	"default_stonewall_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_violet",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"default_stonewall_red", 
	"Red Stonewall", 
	"default_stonewall_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_red",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_pink", 
	"Pink Stonewall", 
	"default_stonewall_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_pink",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_orange", 
	"Orange Stonewall", 
	"default_stonewall_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_orange",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_magenta", 
	"Magenta Stonewall", 
	"default_stonewall_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_magenta",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_green", 
	"Green Stonewall", 
	"default_stonewall_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_green",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_dark_green", 
	"Darkgreen Stonewall", 
	"default_stonewall_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_dark_green",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_cyan", 
	"Cyan Stonewall", 
	"default_stonewall_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_cyan",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_brown", 
	"Brown Stonewall", 
	"default_stonewall_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_brown",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_blue", 
	"Blue Stonewall", 
	"default_stonewall_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_blue",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_stonewall_black", 
	"Black Stonewall", 
	"default_stonewall_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_black",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"farming_straw", 
	"Straw", 
	"farming_straw.png",
	{cracky=3,oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"farming:straw",
	default.node_sound_leaves_defaults()
	)
	
mystairwork.register_all(
	"columnia_rusty_block", 
	"Rusty Block", 
	"columnia_rusty_block.png",
	{cracky=2,not_in_creative_inventory=1},
	"columnia:rusty_block",
	default.node_sound_stone_defaults()
	)
	
mystairwork.register_all(
	"default_reedblock", 
	"Reed Block", 
	"default_reedblock.png",
	{snappy=3,oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"default:reedblock",
	default.node_sound_leaves_defaults()
	)
	
	
	
-----------------------------------------------------------------------------------------------------
--wool


mystairwork.register_all(--material, description, image, groups, craft item
	"wool_white", 
	"White Wool", 
	"wool_white.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_white",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_black", 
	"Black Wool", 
	"wool_black.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_black",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_blue", 
	"Blue Wool", 
	"wool_blue.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_blue",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_brown", 
	"Brown Wool", 
	"wool_brown.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_brown",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_cyan", 
	"Cyan Wool", 
	"wool_cyan.png",
    {cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_cyan",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_dark_green", 
	"Dark Green Wool", 
	"wool_dark_green.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_dark_green",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_dark_grey", 
	"Dark Grey Wool", 
	"wool_dark_grey.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_dark_grey",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_green", 
	"Green Wool", 
	"wool_green.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_green",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_grey", 
	"Grey Wool", 
	"wool_grey.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_grey",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_magenta", 
	"Magenta Wool", 
	"wool_magenta.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_magenta",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_orange", 
	"Orange Wool", 
	"wool_orange.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_orange",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_pink", 
	"Pink Wool", 
	"wool_pink.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_pink",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_red", 
	"Red Wool", 
	"wool_red.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_red",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_violet", 
	"Violet Wool", 
	"wool_violet.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_violet",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"wool_yellow", 
	"Yellow Wool", 
	"wool_yellow.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool_yellow",
	default.node_sound_leaves_defaults()
	)



















