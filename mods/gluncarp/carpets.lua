
local carpet_tab = {
{"black", 	"Black"},
{"blue", 	"Blue"},
{"brown", 	"Brown"},
{"cyan", 	"Cyan"},
{"dark_green", 	"Dark Green"},
{"dark_grey", 	"Dark Grey"},
{"green", 	"Green"},
{"grey", 	"Grey"},
{"magenta", 	"Magenta"},
{"orange",	"Orange"},
{"pink", 	"Pink"},
{"red", 	"Red"},
{"violet", 	"Violet"},
{"white", 	"White"},
{"yellow", 	"Yellow"},
{"blackgold", 	"Black n Gold"},
}

for i in ipairs (carpet_tab) do
local carpetname = carpet_tab[i][1]
local carpetdesc = carpet_tab[i][2]
    
	local underground_tab = {
    {"stone", 	            "Stone",		        "default_stone",		        "default:stone"},
	{"cobble", 	            "Cobblestone",		    "default_cobble",		        "default:cobble"},
	{"stonebrick", 	        "Stone Brick",		    "default_stone_brick",		    "default:stonebrick"},
	{"mossycobble", 	    "Mossy Cobblestone",	"default_mossycobble",		    "default:mossycobble"},
	{"desert_stone", 	    "Desert Stone",		    "default_desert_stone",		    "default:desert_stone"},
	{"desert_cobble", 	    "Desert Cobblestone",	"default_desert_cobble",		"default:desert_cobble"},
	{"desert_stonebrick", 	"Desert Stone Brick",	"default_desert_stone_brick",	"default:desert_stonebrick"},
	{"sandstone", 	        "Sandstone",		    "default_sandstone",		    "default:sandstone"},
	{"sandstonebrick", 	    "Sandstone Brick",		"default_sandstone_brick",		"default:sandstonebrick"},
	{"obsidian", 	        "Obsidian",		        "default_obsidian",		        "default:obsidian"},
	{"obsidianbrick", 	    "Obsidian Brick",		"default_obsidian_brick",		"default:obsidianbrick"},
	{"clay", 	            "Clay",		            "default_clay",		            "default:clay"},
	{"ice", 	            "Ice",		            "default_ice",		            "default:ice"},
	{"wood", 	            "Wooden Planks",		"default_wood",		            "default:wood"},
	{"wood_jungle", 	    "Junglewood Planks",	"default_wood_jungle",		    "default:wood_jungle"}, -- not defaultname
	{"wood_pine", 	        "Pinewood Planks",		"default_wood_pine",		    "default:wood_pine"}, -- not defaultname
	--{"acacia_wood", 	    "Acacia Wood Planks",	"default_acacia_wood",		    "default:acacia_wood"},
	{"brick", 	            "Brick Block",		    "default_brick",		        "default:brick"},
	--end of default
	{"cactus_block", 	    "Cactus Block",		    "default_cactus_block",		    "default:cactus_block"},
	{"cactus_brick", 	    "Cactus Brick",		    "default_cactus_brick",		    "default:cactus_brick"},
	-- glunggi stuff
	-- woods
	{"wood_palm", 	        "Palm Wood",		    "default_wood_palm",		    "default:wood_palm"},
	{"wood_orange", 	    "Orange Wood",		    "default_wood_orange",		    "default:wood_orange"},
	{"wood_olive", 	        "Olive Wood",		    "default_wood_olive",		    "default:wood_olive"},
	{"wood_birch", 	        "Birch Wood",		    "default_wood_birch",		    "default:wood_birch"},
	{"wood_poplar", 	    "Poplar Wood",		    "default_wood_poplar",		    "default:wood_poplar"},
	{"wood_rubber", 	    "Rubber Wood",		    "default_wood_rubber",		    "default:wood_rubber"},
	{"wood_oak", 	        "Oak Wood",		        "default_wood_oak",		        "default:wood_oak"},
	{"wood_ahorn", 	        "Ahorn Wood",		    "default_wood_ahorn",		    "default:wood_ahorn"},
	-- wooden floors
	{"floor_w_wood", 	    "Wooden Floor",		    "default_floor_w_wood",		    "default:floor_w_wood"},
	{"floor_w_oakolive", 	"Oak & Olivetree Wood Floor",		 "default_floor_w_oakolive",	"default:floor_w_oakolive"},
	{"floor_w_junglebirch", "Jungle & Birch Wood Floor",		 "default_floor_w_junglebirch",	"default:floor_w_junglebirch"},
	-- colored woods
	{"colwood_black", 	    "Black Colored Wood",   "default_colwood_black",		"default:colwood_black"},
	{"colwood_blue", 	    "Blue Colored Wood",    "default_colwood_blue",		    "default:colwood_blue"},
	{"colwood_brown", 	    "Brown Colored Wood",   "default_colwood_brown",		"default:colwood_brown"},
	{"colwood_cyan", 	    "Cyan Colored Wood",    "default_colwood_cyan",		    "default:colwood_cyan"},
	{"colwood_dark_green", "Darkgreen Colored Wood", "default_colwood_dark_green",  "default:colwood_dark_green"},
	{"colwood_dark_grey",  "Darkgrey Colored Wood", "default_colwood_dark_grey",    "default:colwood_dark_grey"},
	{"colwood_green",       "Green Colored Wood",   "default_colwood_green",        "default:colwood_green"},
	{"colwood_grey",        "Grey Colored Wood",    "default_colwood_grey",         "default:colwood_grey"},
	{"colwood_magenta", 	"Magenta Colored Wood", "default_colwood_magenta",		"default:colwood_magenta"},
	{"colwood_orange", 	    "Orange Colored Wood",  "default_colwood_orange",		"default:colwood_orange"},
	{"colwood_pink", 	    "Pink Colored Wood",    "default_colwood_pink",		    "default:colwood_pink"},
	{"colwood_red", 	    "Red Colored Wood",     "default_colwood_red",		    "default:colwood_red"},
	{"colwood_violet", 	    "Violet Colored Wood",  "default_colwood_violet",		"default:colwood_violet"},
	{"colwood_yellow", 	    "Yellow Colored Wood",  "default_colwood_yellow",		"default:colwood_yellow"},
	{"colwood_white", 	    "White Colored Wood",   "default_colwood_white",		"default:colwood_white"},
	-- colored bricks
	{"brick_black", 	    "Black Colored Bricks",		"default_brick_black",		"default:brick_black"},
	{"brick_blue", 	        "Blue Colored Bricks",		"default_brick_blue",		"default:brick_blue"},
	{"brick_brown", 	    "Brown Colored Bricks",		"default_brick_brown",		"default:brick_brown"},
	{"brick_cyan", 	        "Cyan Colored Bricks",		"default_brick_cyan",		"default:brick_cyan"},
	{"brick_dark_green", 	"Darkgreen Colored Bricks", "default_brick_dark_green",	"default:brick_dark_green"},
	{"brick_dark_grey", 	"Darkgrey Colored Bricks",	"default_brick_dark_grey",  "default:brick_dark_grey"},
	{"brick_green", 	    "Green Colored Bricks",		"default_brick_green",		"default:brick_green"},
	{"brick_grey", 	        "Grey Colored Bricks",		"default_brick_grey",		"default:brick_grey"},
	{"brick_magenta", 	    "Magenta Colored Bricks",   "default_brick_magenta",	"default:brick_magenta"},
	{"brick_orange", 	    "Orange Colored Bricks",    "default_brick_orange",		"default:brick_orange"},
	{"brick_pink", 	        "Pink Colored Bricks",		"default_brick_pink",		"default:brick_pink"},
	{"brick_red", 	        "Red Colored Bricks",		"default_brick_red",		"default:brick_red"},
	{"brick_violet", 	    "Violet Colored Bricks",	"default_brick_violet",		"default:brick_violet"},
	{"brick_white", 	    "White Colored Bricks",		"default_brick_white",		"default:brick_white"},
	{"brick_yellow", 	    "Yellow Colored Bricks",	"default_brick_yellow",		"default:brick_yellow"},
	-- more stones
	{"granite_brick", 	      "Granite Brick",	           "default_granite_brick",		    "default:granite_brick"},
	{"granite", 	          "Granite",	               "default_granite",		        "default:granite"},
	{"marble_brick", 	      "Marble Brick",	           "default_marble_brick",		    "default:marble_brick"},
	{"marble", 	              "Marble",	                   "default_marble",		        "default:marble"},
	{"floor_granite", 	      "Granite Floor",	           "default_floor_granite",		    "default:floor_granite"},
	{"floor_stone", 	      "Stone Floor",	           "default_floor_stone",		    "default:floor_stone"},
	{"floor_desertstone", 	  "Desertstone Floor",	       "default_floor_desertstone",		"default:floor_desertstone"},
	{"floor_sanddesertstone", "Sand- n Desertstone Floor", "default_floor_sanddesertstone",	"default:floor_sanddesertstone"},
	{"floor_stonegranite", 	  "Stone n Granite Floor",	   "default_floor_stonegranite",	"default:floor_stonegranite"},
	{"floor_sandstone", 	  "Sandstone Floor",	       "default_floor_sandstone",		"default:floor_sandstone"},
	{"floor_marble", 	      "Marble Floor",	           "default_floor_marble",		    "default:floor_marble"},
	{"floor_s_yellow", 	      "Yellow Floor",	           "default_floor_s_yellow",		"default:floor_s_yellow"},
	{"floor_s_white", 	      "White Floor",	           "default_floor_s_white",		    "default:floor_s_white"},
	{"floor_s_violet", 	      "Violet Floor",	           "default_floor_s_violet",		"default:floor_s_violet"},
	{"floor_s_red", 	      "Red Floor",	               "default_floor_s_red",		    "default:floor_s_red"},
	{"floor_s_pink", 	      "Pink Floor",	               "default_floor_s_pink",		    "default:floor_s_pink"},
	{"floor_s_orange", 	      "Orange Floor",	           "default_floor_s_orange",		"default:floor_s_orange"},
	{"floor_s_magenta", 	  "Magenta Floor",	           "default_floor_s_magenta",		"default:floor_s_magenta"},
	{"floor_s_green", 	      "Green Floor",	           "default_floor_s_green",		    "default:floor_s_green"},
	{"floor_s_dark_green", 	  "Darkgreen Floor",	       "default_floor_s_dark_green",	"default:floor_s_dark_green"},
	{"floor_s_cyan", 	      "Cyan Floor",	               "default_floor_s_cyan",		    "default:floor_s_cyan"},
	{"floor_s_brown", 	      "Brown Floor",	           "default_floor_s_brown",		    "default:floor_s_brown"},
	{"floor_s_blue", 	      "Blue Floor",	               "default_floor_s_blue",		    "default:floor_s_blue"},
	{"floor_s_black", 	      "Black Floor",	           "default_floor_s_black",		    "default:floor_s_black"},
	{"floor_s_blackwhite", 	  "Black n White Floor",	   "default_floor_s_blackwhite",    "default:floor_s_blackwhite"},
	{"floor_s_whiteblue", 	  "Blue n White Floor",	       "default_floor_s_whiteblue",		"default:floor_s_whiteblue"},
	{"floor_s_blueyellow", 	  "Blue n Yellow Floor",	   "default_floor_s_blueyellow",	"default:floor_s_blueyellow"},
	{"floor_s_yellowgreen",   "Green n Yellow Floor",	   "default_floor_s_yellowgreen",	"default:floor_s_yellowgreen"},
	{"floor_s_greengreen", 	  "Light n Dark Green Floor",  "default_floor_s_greengreen",	"default:floor_s_greengreen"},
	{"floor_s_magentacyan",   "Magenta n Cyan Floor",	   "default_floor_s_magentacyan",	"default:floor_s_magentacyan"},
	{"floor_s_cyanblue", 	  "Blue n Cyan Floor",	       "default_floor_s_cyanblue",		"default:floor_s_cyanblue"},
	{"floor_s_redorange", 	  "Red n Orange Floor",	       "default_floor_s_redorange",		"default:floor_s_redorange"},
	{"floor_s_greenblack", 	  "Green n Black Floor",	   "default_floor_s_greenblack",	"default:floor_s_greenblack"},
	{"floor_s_blackviolet",   "Violet n Black Floor",	   "default_floor_s_blackviolet",	"default:floor_s_blackviolet"},
	{"floor_s_yellowred", 	  "Yellow n Red Floor",	       "default_floor_s_yellowred",		"default:floor_s_yellowred"},
	{"floor_s_whitered", 	  "White n Red Floor",	       "default_floor_s_whitered",		"default:floor_s_whitered"},
	{"floor_s_greenviolet",   "Green n Violet Floor",	   "default_floor_s_greenviolet",	"default:floor_s_greenviolet"},
	{"floor_s_violetyellow",  "Yellow n Violet Floor",	   "default_floor_s_violetyellow",	"default:floor_s_violetyellow"},
	{"stonewall_yellow", 	  "Yellow Stonewall",	       "default_stonewall_yellow",		"default:stonewall_yellow"},
	{"stonewall_white", 	  "white Stonewall",	       "default_stonewall_white",		"default:stonewall_white"},
	{"stonewall_violet", 	  "violet Stonewall",	       "default_stonewall_violet",		"default:stonewall_violet"},
	{"stonewall_red", 	      "red Stonewall",	           "default_stonewall_red",		    "default:stonewall_red"},
	{"stonewall_pink", 	      "pink Stonewall",	           "default_stonewall_pink",		"default:stonewall_pink"},
	{"stonewall_orange", 	  "orange Stonewall",	       "default_stonewall_orange",		"default:stonewall_orange"},
	{"stonewall_magenta", 	  "magenta Stonewall",	       "default_stonewall_magenta",		"default:stonewall_magenta"},
	{"stonewall_green", 	  "green Stonewall",	       "default_stonewall_green",		"default:stonewall_green"},
	{"stonewall_dark_green",  "dark_green Stonewall",	   "default_stonewall_dark_green",	"default:stonewall_dark_green"},
	{"stonewall_cyan", 	      "cyan Stonewall",	           "default_stonewall_cyan",		"default:stonewall_cyan"},
	{"stonewall_brown", 	  "brown Stonewall",	       "default_stonewall_brown",		"default:stonewall_brown"},
	{"stonewall_blue", 	      "blue Stonewall",	           "default_stonewall_blue",		"default:stonewall_blue"},
	{"stonewall_black", 	  "black Stonewall",	       "default_stonewall_black",		"default:stonewall_black"},
	
    }
	
	
    for i in ipairs (underground_tab) do
    local mat = underground_tab[i][1]
    local desc = underground_tab[i][2]
	local image = underground_tab[i][3]



minetest.register_node("gluncarp:"..carpetname, {
         description = carpetdesc.." Carpet",
		 drawtype = "raillike",
		 tiles = {"gluncarp_"..carpetname..".png"},
		 inventory_image = "gluncarp_"..carpetname.."_inv.png",
		 wield_image = "gluncarp_"..carpetname..".png",
		 paramtype = "light",
		 is_ground_content = true,
		 walkable = false,
		 buildable_to = false,
		 selection_box = {
		 type = "fixed",
		 fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
		 },
		 groups = {dig_immediate=2, gluncarp=1, not_in_creative_inventory=1},
		 
		 after_place_node = function(pos, placer, itemstack, pointed_thing)
		
		local nodeu = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		if nodeu == "default:stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:cobble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_cobble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonebrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonebrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:mossycobble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_mossycobble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:desert_stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_desert_stone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:desert_cobble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_desert_cobble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:desert_stonebrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_desert_stonebrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:sandstone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_sandstone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:sandstonebrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_sandstonebrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:obsidian" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_obsidian"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:obsidianbrick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_obsidianbrick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:clay" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_clay"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:ice" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_ice"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_jungle" then -- not defaultname
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_jungle"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_pine" then -- not defaultname
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_pine"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:acacia_wood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_acacia_wood"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick"})
		   minetest.set_node(pos,{name = "air"})
		   --end of default
		elseif  nodeu == "default:cactus_block" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_cactus_block"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:cactus_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_cactus_brick"})
		   minetest.set_node(pos,{name = "air"})
		   --glunggistuff
		   --wood
		elseif  nodeu == "default:wood_palm" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_palm"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_olive" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_olive"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_birch" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_birch"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_poplar" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_poplar"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_rubber" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_rubber"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_oak" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_oak"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:wood_ahorn" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_wood_ahorn"})
		   minetest.set_node(pos,{name = "air"})
		   --wooden floors
		  elseif  nodeu == "default:floor_w_wood" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_w_wood"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_w_oakolive" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_w_oakolive"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_w_junglebirch" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_w_junglebirch"})
		   minetest.set_node(pos,{name = "air"})
		   --color wood
		elseif  nodeu == "default:colwood_black" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_black"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_blue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_blue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_brown" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_brown"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_cyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_cyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_dark_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_dark_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_dark_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_dark_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_magenta" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_magenta"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_pink" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_pink"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_red" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_red"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_violet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_violet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_yellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_yellow"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:colwood_white" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_colwood_white"})
		   minetest.set_node(pos,{name = "air"})
		   --color bricks
		elseif  nodeu == "default:brick_black" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_black"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_blue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_blue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_brown" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_brown"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_cyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_cyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_dark_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_dark_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_dark_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_dark_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_grey" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_grey"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_magenta" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_magenta"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_pink" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_pink"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_red" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_red"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_violet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_violet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_white" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_white"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:brick_yellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_brick_yellow"})
		   minetest.set_node(pos,{name = "air"})
		   --more stone
		elseif  nodeu == "default:granite_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_granite_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:granite" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_granite"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:marble_brick" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_marble_brick"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:marble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_marble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_granite" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_granite"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_stone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_stone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_desertstone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_desertstone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_sanddesertstone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_sanddesertstone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_stonegranite" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_stonegranite"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_sandstone" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_sandstone"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_marble" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_marble"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_yellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_yellow"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_white" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_white"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_violet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_violet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_red" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_red"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_pink" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_pink"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_magenta" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_magenta"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_dark_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_dark_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_cyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_cyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_brown" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_brown"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_blue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_blue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_black" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_black"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_blackwhite" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_blackwhite"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_whiteblue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_whiteblue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_blueyellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_blueyellow"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_yellowgreen" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_yellowgreen"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_greengreen" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_greengreen"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_magentacyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_magentacyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_cyanblue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_cyanblue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_redorange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_redorange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_greenblack" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_greenblack"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_blackviolet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_blackviolet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_yellowred" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_yellowred"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_whitered" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_whitered"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_greenviolet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_greenviolet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:floor_s_violetyellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_floor_s_violetyellow"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_yellow" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_yellow"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_white" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_white"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_violet" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_violet"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_red" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_red"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_pink" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_pink"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_orange" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_orange"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_magenta" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_magenta"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_dark_green" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_dark_green"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_cyan" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_cyan"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_brown" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_brown"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_blue" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_blue"})
		   minetest.set_node(pos,{name = "air"})
		elseif  nodeu == "default:stonewall_black" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "gluncarp:"..carpetname.."_on_stonewall_black"})
		   minetest.set_node(pos,{name = "air"})
		else 
		   return
		end
	end,
	
})


minetest.register_node("gluncarp:"..carpetname.."_on_"..mat, {
         description = carpetdesc.." Carpet on "..desc,
		 tiles = {
		 "gluncarp_"..carpetname..".png",
		 image..".png",
		 image..".png^gluncarp_side_"..carpetname..".png",
		 },
		 paramtype = "light",
		 is_ground_content = true,
		 walkable = true,
		 buildable_to = false,
		 groups = {dig_immediate=2, gluncarp=1, not_in_creative_inventory=1},
		 drop = "gluncarp:"..carpetname,
		
		 after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "gluncarp:"..carpetname.."_on_stone" then
		       minetest.set_node(pos,{name = "default:stone"})
		    elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cobble" then
		       minetest.set_node(pos,{name = "default:cobble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonebrick" then
		       minetest.set_node(pos,{name = "default:stonebrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_mossycobble" then
		       minetest.set_node(pos,{name = "default:mossycobble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_desert_stone" then
		       minetest.set_node(pos,{name = "default:desert_stone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_desert_cobble" then
		       minetest.set_node(pos,{name = "default:desert_cobble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_desert_stonebrick" then
		       minetest.set_node(pos,{name = "default:desert_stonebrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_sandstone" then
		       minetest.set_node(pos,{name = "default:sandstone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_sandstonebrick" then
		       minetest.set_node(pos,{name = "default:sandstonebrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_obsidian" then
		       minetest.set_node(pos,{name = "default:obsidian"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_obsidianbrick" then
		       minetest.set_node(pos,{name = "default:obsidianbrick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_clay" then
		       minetest.set_node(pos,{name = "default:clay"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_ice" then
		       minetest.set_node(pos,{name = "default:ice"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood" then
		       minetest.set_node(pos,{name = "default:wood"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_jungle" then -- not defaultname
		       minetest.set_node(pos,{name = "default:wood_jungle"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_pine" then -- not defaultname
		       minetest.set_node(pos,{name = "default:wood_pine"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_acacia_wood" then
		       minetest.set_node(pos,{name = "default:acacia_wood"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick" then
		       minetest.set_node(pos,{name = "default:brick"})
			   --end of default
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cactus_block" then
		       minetest.set_node(pos,{name = "default:cactus_block"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cactus_brick" then
		       minetest.set_node(pos,{name = "default:cactus_brick"})
			   -- wood
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_palm" then
		       minetest.set_node(pos,{name = "default:wood_palm"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_orange" then
		       minetest.set_node(pos,{name = "default:wood_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_olive" then
		       minetest.set_node(pos,{name = "default:wood_olive"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_birch" then
		       minetest.set_node(pos,{name = "default:wood_birch"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_poplar" then
		       minetest.set_node(pos,{name = "default:wood_poplar"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_rubber" then
		       minetest.set_node(pos,{name = "default:wood_rubber"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_oak" then
		       minetest.set_node(pos,{name = "default:wood_oak"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_wood_ahorn" then
		       minetest.set_node(pos,{name = "default:wood_ahorn"})
			   -- wooden floors
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_w_wood" then
		       minetest.set_node(pos,{name = "default:floor_w_wood"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_w_oakolive" then
		       minetest.set_node(pos,{name = "default:floor_w_oakolive"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_w_junglebirch" then
		       minetest.set_node(pos,{name = "default:floor_w_junglebirch"})
			   -- color wood
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_black" then
		       minetest.set_node(pos,{name = "default:colwood_black"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_blue" then
		       minetest.set_node(pos,{name = "default:colwood_blue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_brown" then
		       minetest.set_node(pos,{name = "default:colwood_brown"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_cyan" then
		       minetest.set_node(pos,{name = "default:colwood_cyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_dark_green" then
		       minetest.set_node(pos,{name = "default:colwood_dark_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_dark_grey" then
		       minetest.set_node(pos,{name = "default:colwood_dark_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_green" then
		       minetest.set_node(pos,{name = "default:colwood_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_grey" then
		       minetest.set_node(pos,{name = "default:colwood_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_magenta" then
		       minetest.set_node(pos,{name = "default:colwood_magenta"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_orange" then
		       minetest.set_node(pos,{name = "default:colwood_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_pink" then
		       minetest.set_node(pos,{name = "default:colwood_pink"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_red" then
		       minetest.set_node(pos,{name = "default:colwood_red"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_violet" then
		       minetest.set_node(pos,{name = "default:colwood_violet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_yellow" then
		       minetest.set_node(pos,{name = "default:colwood_yellow"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_colwood_white" then
		       minetest.set_node(pos,{name = "default:colwood_white"})
			   -- color brick
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_black" then
		       minetest.set_node(pos,{name = "default:brick_black"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_blue" then
		       minetest.set_node(pos,{name = "default:brick_blue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_brown" then
		       minetest.set_node(pos,{name = "default:brick_brown"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_cyan" then
		       minetest.set_node(pos,{name = "default:brick_cyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_dark_green" then
		       minetest.set_node(pos,{name = "default:brick_dark_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_dark_grey" then
		       minetest.set_node(pos,{name = "default:brick_dark_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_green" then
		       minetest.set_node(pos,{name = "default:brick_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_grey" then
		       minetest.set_node(pos,{name = "default:brick_grey"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_magenta" then
		       minetest.set_node(pos,{name = "default:brick_magenta"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_orange" then
		       minetest.set_node(pos,{name = "default:brick_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_pink" then
		       minetest.set_node(pos,{name = "default:brick_pink"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_red" then
		       minetest.set_node(pos,{name = "default:brick_red"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_violet" then
		       minetest.set_node(pos,{name = "default:brick_violet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_white" then
		       minetest.set_node(pos,{name = "default:brick_white"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_brick_yellow" then
		       minetest.set_node(pos,{name = "default:brick_yellow"})
			 -- more stones
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_granite_brick" then
		       minetest.set_node(pos,{name = "default:granite_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_granite" then
		       minetest.set_node(pos,{name = "default:granite"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_marble_brick" then
		       minetest.set_node(pos,{name = "default:marble_brick"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_marble" then
		       minetest.set_node(pos,{name = "default:marble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_granite" then
		       minetest.set_node(pos,{name = "default:floor_granite"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_stone" then
		       minetest.set_node(pos,{name = "default:floor_stone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_desertstone" then
		       minetest.set_node(pos,{name = "default:floor_desertstone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_sanddesertstone" then
		       minetest.set_node(pos,{name = "default:floor_sanddesertstone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_stonegranite" then
		       minetest.set_node(pos,{name = "default:floor_stonegranite"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_sandstone" then
		       minetest.set_node(pos,{name = "default:floor_sandstone"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_marble" then
		       minetest.set_node(pos,{name = "default:floor_marble"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_yellow" then
		       minetest.set_node(pos,{name = "default:floor_s_yellow"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_white" then
		       minetest.set_node(pos,{name = "default:floor_s_white"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_violet" then
		       minetest.set_node(pos,{name = "default:floor_s_violet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_red" then
		       minetest.set_node(pos,{name = "default:floor_s_red"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_pink" then
		       minetest.set_node(pos,{name = "default:floor_s_pink"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_orange" then
		       minetest.set_node(pos,{name = "default:floor_s_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_magenta" then
		       minetest.set_node(pos,{name = "default:floor_s_magenta"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_green" then
		       minetest.set_node(pos,{name = "default:floor_s_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_dark_green" then
		       minetest.set_node(pos,{name = "default:floor_s_dark_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_cyan" then
		       minetest.set_node(pos,{name = "default:floor_s_cyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_brown" then
		       minetest.set_node(pos,{name = "default:floor_s_brown"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_blue" then
		       minetest.set_node(pos,{name = "default:floor_s_blue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_black" then
		       minetest.set_node(pos,{name = "default:floor_s_black"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_cactus_block" then
		       minetest.set_node(pos,{name = "default:cactus_block"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_blackwhite" then
		       minetest.set_node(pos,{name = "default:floor_s_blackwhite"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_whiteblue" then
		       minetest.set_node(pos,{name = "default:floor_s_whiteblue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_blueyellow" then
		       minetest.set_node(pos,{name = "default:floor_s_blueyellow"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_yellowgreen" then
		       minetest.set_node(pos,{name = "default:floor_s_yellowgreen"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_greengreen" then
		       minetest.set_node(pos,{name = "default:floor_s_greengreen"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_magentacyan" then
		       minetest.set_node(pos,{name = "default:floor_s_magentacyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_cyanblue" then
		       minetest.set_node(pos,{name = "default:floor_s_cyanblue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_redorange" then
		       minetest.set_node(pos,{name = "default:floor_s_redorange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_greenblack" then
		       minetest.set_node(pos,{name = "default:floor_s_greenblack"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_blackviolet" then
		       minetest.set_node(pos,{name = "default:floor_s_blackviolet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_yellowred" then
		       minetest.set_node(pos,{name = "default:floor_s_yellowred"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_whitered" then
		       minetest.set_node(pos,{name = "default:floor_s_whitered"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_greenviolet" then
		       minetest.set_node(pos,{name = "default:floor_s_greenviolet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_floor_s_violetyellow" then
		       minetest.set_node(pos,{name = "default:floor_s_violetyellow"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_yellow" then
		       minetest.set_node(pos,{name = "default:stonewall_yellow"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_white" then
		       minetest.set_node(pos,{name = "default:stonewall_white"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_violet" then
		       minetest.set_node(pos,{name = "default:stonewall_violet"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_red" then
		       minetest.set_node(pos,{name = "default:stonewall_red"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_pink" then
		       minetest.set_node(pos,{name = "default:stonewall_pink"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_orange" then
		       minetest.set_node(pos,{name = "default:stonewall_orange"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_magenta" then
		       minetest.set_node(pos,{name = "default:stonewall_magenta"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_green" then
		       minetest.set_node(pos,{name = "default:stonewall_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_dark_green" then
		       minetest.set_node(pos,{name = "default:stonewall_dark_green"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_cyan" then
		       minetest.set_node(pos,{name = "default:stonewall_cyan"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_brown" then
		       minetest.set_node(pos,{name = "default:stonewall_brown"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_blue" then
		       minetest.set_node(pos,{name = "default:stonewall_blue"})
			elseif  oldnode.name == "gluncarp:"..carpetname.."_on_stonewall_black" then
		       minetest.set_node(pos,{name = "default:stonewall_black"})
		    else 
		       return
			end
	     end,
		 
})
end
end

