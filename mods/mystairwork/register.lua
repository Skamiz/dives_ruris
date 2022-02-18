
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

-- mystairwork.register_all("modname:itemname", {
-- 	description = nil,
-- 	tiles = nil,
-- 	groups = nil,
-- 	sounds = nil,
-- })
-- return

mystairwork.register_all(
	"Sandstone",
	"default_sandstone.png",
	{crumbly=2,cracky=2, not_in_creative_inventory=1},
	"default:sandstone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Clay",
	"default_clay.png",
	{crumbly=3, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	"default:clay",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Cobblestone",
	"default_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:cobble",
	default.node_sound_stone_defaults()
	)



mystairwork.register_all(
	"Desert Cobblestone",
	"default_desert_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:desert_cobble",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Stone",
	"default_stone.png",
	{cracky = 3,not_in_creative_inventory=1},
	"default:stone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Cactus",
	"default_cactus_side.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Cactus Block",
	"default_cactus_block.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus_block",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Cactus Brick",
	"default_cactus_brick.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:cactus_brick",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Desert Stone",
	"default_desert_stone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:desert_stone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Desert Stone Brick",
	"default_desert_stone_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:desert_stonebrick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Wood",
	"default_wood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Brick",
	"default_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Ice",
	"default_ice.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:ice",
	default.node_sound_glass_defaults()
	)

mystairwork.register_all(
	"Mossy Cobble",
	"default_mossycobble.png",
	{cracky = 3,not_in_creative_inventory=1},
	"default:mossycobble",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Obsidian",
	"default_obsidian.png",
	{cracky=1,level=2,not_in_creative_inventory=1},
	"default:obsidian",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Obsidian Brick",
	"default_obsidian_brick.png",
	{cracky=1,level=2,not_in_creative_inventory=1},
	"default:obsidianbrick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Sandstone Brick",
	"default_sandstone_brick.png",
	{crumbly=2,cracky=2,not_in_creative_inventory=1},
	"default:sandstonebrick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Stone Brick",
	"default_stone_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonebrick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
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
	"Palm Wood",
	"default_wood_palm.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_palm",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Orange Wood",
	"default_wood_orange.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_orange",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Olive Wood",
	"default_wood_olive.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_olive",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Birch Wood",
	"default_wood_birch.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_birch",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Poplar Wood",
	"default_wood_poplar.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_poplar",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Rubber Wood",
	"default_wood_rubber.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_rubber",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Oak Wood",
	"default_wood_oak.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_oak",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Ahorn Wood",
	"default_wood_ahorn.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_ahorn",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Pine Wood",
	"default_wood_pine.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_pine",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Jungle Wood",
	"default_wood_jungle.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:wood_jungle",
	default.node_sound_wood_defaults()
	)

-- wooden floors

mystairwork.register_all(
	"Wooden Floor",
	"default_floor_w_wood.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:floor_w_wood",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Oak & Olivetree Wood Floor",
	"default_floor_w_oakolive.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:floor_w_oakolive",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Jungle & Birch Wood Floor",
	"default_floor_w_junglebirch.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:floor_w_junglebirch",
	default.node_sound_wood_defaults()
	)

-- colored woods

mystairwork.register_all(
	"Black Colored Wood",
	"default_colwood_black.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_black",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Blue Colored Wood",
	"default_colwood_blue.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_blue",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Brown Colored Wood",
	"default_colwood_brown.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_brown",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Cyan Colored Wood",
	"default_colwood_cyan.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_cyan",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Darkgreen Colored Wood",
	"default_colwood_dark_green.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_dark_green",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Darkgrey Colored Wood",
	"default_colwood_dark_grey.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_dark_grey",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Grey Colored Wood",
	"default_colwood_grey.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_grey",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Green Colored Wood",
	"default_colwood_green.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_green",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Magenta Colored Wood",
	"default_colwood_magenta.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_magenta",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Orange Colored Wood",
	"default_colwood_orange.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_orange",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Pink Colored Wood",
	"default_colwood_pink.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_pink",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Red Colored Wood",
	"default_colwood_red.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_red",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"Violet Colored Wood",
	"default_colwood_violet.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_violet",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"White Colored Wood",
	"default_colwood_white.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_white",
	default.node_sound_wood_defaults()
	)

mystairwork.register_all(
	"yellow Colored Wood",
	"default_colwood_yellow.png",
	{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	"default:colwood_yellow",
	default.node_sound_wood_defaults()
	)

-------------------
-- Colored Bricks

mystairwork.register_all(
	"Black Colored Bricks",
	"default_brick_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_black",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Blue Colored Bricks",
	"default_brick_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_blue",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Brown Colored Bricks",
	"default_brick_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_brown",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Cyan Colored Bricks",
	"default_brick_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_cyan",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Darkgreen Colored Bricks",
	"default_brick_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_dark_green",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Darkgrey Colored Bricks",
	"default_brick_dark_grey.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_dark_grey",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Green Colored Bricks",
	"default_brick_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_green",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Grey Colored Bricks",
	"default_brick_grey.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_grey",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Magenta Colored Bricks",
	"default_brick_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_magenta",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Orange Colored Bricks",
	"default_brick_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_orange",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Pink Colored Bricks",
	"default_brick_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_pink",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Red Colored Bricks",
	"default_brick_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_red",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Violet Colored Bricks",
	"default_brick_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_violet",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"White Colored Bricks",
	"default_brick_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_white",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Yellow Colored Bricks",
	"default_brick_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:brick_yellow",
	default.node_sound_stone_defaults()
	)

--more stones
mystairwork.register_all(
	"Granite Brick",
	"default_granite_brick.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:granite_brick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Granite",
	"default_granite.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:granite",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Marble Brick",
	"default_marble_brick.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:marble_brick",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Marble",
	"default_marble.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:marble",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Granite Floor",
	"default_floor_granite.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:floor_granite",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Stone Floor",
	"default_floor_stone.png",
	{cracky=2,not_in_creative_inventory=1},
	"default:floor_stone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Desertstone Floor",
	"default_floor_desertstone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_desertstone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Sand- & Desert-Stone Floor",
	"default_floor_sanddesertstone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_sanddesertstone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Stone- & Granite Floor",
	"default_floor_stonegranite.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_stonegranite",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Sandstone Floor",
	"default_floor_sandstone.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_sandstone",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Marble Floor",
	"default_floor_marble.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_marble",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Yellow Floor",
	"default_floor_s_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_yellow",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"White Floor",
	"default_floor_s_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_white",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Violet Floor",
	"default_floor_s_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_violet",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Red Floor",
	"default_floor_s_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_red",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Pink Floor",
	"default_floor_s_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_pink",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Orange Floor",
	"default_floor_s_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_orange",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Magenta Floor",
	"default_floor_s_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_magenta",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Green Floor",
	"default_floor_s_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_green",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Darkgreen Floor",
	"default_floor_s_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_dark_green",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Cyan Floor",
	"default_floor_s_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_cyan",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Brown Floor",
	"default_floor_s_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_brown",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Blue Floor",
	"default_floor_s_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blue",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Black Floor",
	"default_floor_s_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_black",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Black n White Floor",
	"default_floor_s_blackwhite.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blackwhite",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Blue n White Floor",
	"default_floor_s_whiteblue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_whiteblue",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Blue n Yellow Floor",
	"default_floor_s_blueyellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blueyellow",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Green n Yellow Floor",
	"default_floor_s_yellowgreen.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_yellowgreen",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Light n Dark Green Floor",
	"default_floor_s_greengreen.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_greengreen",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Magenta n Cyan Floor",
	"default_floor_s_magentacyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_magentacyan",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Blue n Cyan Floor",
	"default_floor_s_cyanblue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_cyanblue",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Red n Orange Floor",
	"default_floor_s_redorange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_redorange",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Green n Black Floor",
	"default_floor_s_greenblack.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_greenblack",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Violet n Black Floor",
	"default_floor_s_blackviolet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_blackviolet",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Yellow n Red Floor",
	"default_floor_s_yellowred.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_yellowred",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"White n Red Floor",
	"default_floor_s_whitered.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_whitered",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Green n Violet Floor",
	"default_floor_s_greenviolet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_greenviolet",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Yellow n Violet Floor",
	"default_floor_s_violetyellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:floor_s_violetyellow",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Yellow Stonewall",
	"default_stonewall_yellow.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_yellow",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"White Stonewall",
	"default_stonewall_white.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_white",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Violet Stonewall",
	"default_stonewall_violet.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_violet",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Red Stonewall",
	"default_stonewall_red.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_red",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Pink Stonewall",
	"default_stonewall_pink.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_pink",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Orange Stonewall",
	"default_stonewall_orange.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_orange",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Magenta Stonewall",
	"default_stonewall_magenta.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_magenta",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Green Stonewall",
	"default_stonewall_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_green",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Darkgreen Stonewall",
	"default_stonewall_dark_green.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_dark_green",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Cyan Stonewall",
	"default_stonewall_cyan.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_cyan",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Brown Stonewall",
	"default_stonewall_brown.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_brown",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Blue Stonewall",
	"default_stonewall_blue.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_blue",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Black Stonewall",
	"default_stonewall_black.png",
	{cracky=3,not_in_creative_inventory=1},
	"default:stonewall_black",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Straw",
	"farming_straw.png",
	{cracky=3,oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"farming:straw",
	default.node_sound_leaves_defaults()
	)

mystairwork.register_all(
	"Rusty Block",
	"columnia_rusty_block.png",
	{cracky=2,not_in_creative_inventory=1},
	"columnia:rusty_block",
	default.node_sound_stone_defaults()
	)

mystairwork.register_all(
	"Reed Block",
	"default_reedblock.png",
	{snappy=3,oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"default:reedblock",
	default.node_sound_leaves_defaults()
	)



-----------------------------------------------------------------------------------------------------
--wool


mystairwork.register_all(--material, description, image, groups, craft item
	"White Wool",
	"wool_white.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:white",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Black Wool",
	"wool_black.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:black",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Blue Wool",
	"wool_blue.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:blue",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Brown Wool",
	"wool_brown.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:brown",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Cyan Wool",
	"wool_cyan.png",
    {cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:cyan",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Dark Green Wool",
	"wool_dark_green.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:dark_green",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Dark Grey Wool",
	"wool_dark_grey.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:dark_grey",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Green Wool",
	"wool_green.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:green",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Grey Wool",
	"wool_grey.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:grey",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Magenta Wool",
	"wool_magenta.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:magenta",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Orange Wool",
	"wool_orange.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:orange",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Pink Wool",
	"wool_pink.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:pink",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Red Wool",
	"wool_red.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:red",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Violet Wool",
	"wool_violet.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:violet",
	default.node_sound_leaves_defaults()
	)
mystairwork.register_all(--material, description, image, groups, craft item
	"Yellow Wool",
	"wool_yellow.png",
	{cracky = 1, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	"wool:yellow",
	default.node_sound_leaves_defaults()
	)
