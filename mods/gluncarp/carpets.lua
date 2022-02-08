
local carpet_tab = {
	-- {carpetname, carpetdesc},
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

local underground_tab = {
	["default:stone"] = true,
	["default:cobble"] = true,
	["default:stonebrick"] = true,
	["default:mossycobble"] = true,
	["default:desert_stone"] = true,
	["default:desert_cobble"] = true,
	["default:desert_stonebrick"] = true,
	["default:sandstone"] = true,
	["default:sandstonebrick"] = true,
	["default:obsidian"] = true,
	["default:obsidianbrick"] = true,
	["default:clay"] = true,
	["default:ice"] = true,
	["default:wood"] = true,
	["default:wood_jungle"] = true, -- not defaultname
	["default:wood_pine"] = true, -- not defaultname
	["default:acacia_wood"] = nil,
	["default:brick"] = true,
	--end of default
	["default:cactus_block"] = true,
	["default:cactus_brick"] = true,
	-- glunggi stuff
	-- woods
	["default:wood_palm"] = true,
	["default:wood_orange"] = true,
	["default:wood_olive"] = true,
	["default:wood_birch"] = true,
	["default:wood_poplar"] = true,
	["default:wood_rubber"] = true,
	["default:wood_oak"] = true,
	["default:wood_ahorn"] = true,
	-- wooden floors
	["default:floor_w_wood"] = true,
	["default:floor_w_oakolive"] = true,
	["default:floor_w_junglebirch"] = true,
	-- colored woods
	["default:colwood_black"] = true,
	["default:colwood_blue"] = true,
	["default:colwood_brown"] = true,
	["default:colwood_cyan"] = true,
	["default:colwood_dark_green"] = true,
	["default:colwood_dark_grey"] = true,
	["default:colwood_green"] = true,
	["default:colwood_grey"] = true,
	["default:colwood_magenta"] = true,
	["default:colwood_orange"] = true,
	["default:colwood_pink"] = true,
	["default:colwood_red"] = true,
	["default:colwood_violet"] = true,
	["default:colwood_yellow"] = true,
	["default:colwood_white"] = true,
	-- colored bricks
	["default:brick_black"] = true,
	["default:brick_blue"] = true,
	["default:brick_brown"] = true,
	["default:brick_cyan"] = true,
	["default:brick_dark_green"] = true,
	["default:brick_dark_grey"] = true,
	["default:brick_green"] = true,
	["default:brick_grey"] = true,
	["default:brick_magenta"] = true,
	["default:brick_orange"] = true,
	["default:brick_pink"] = true,
	["default:brick_red"] = true,
	["default:brick_violet"] = true,
	["default:brick_white"] = true,
	["default:brick_yellow"] = true,
	-- more stones
	["default:granite_brick"] = true,
	["default:granite"] = true,
	["default:marble_brick"] = true,
	["default:marble"] = true,
	["default:floor_granite"] = true,
	["default:floor_stone"] = true,
	["default:floor_desertstone"] = true,
	["default:floor_sanddesertstone"] = true,
	["default:floor_stonegranite"] = true,
	["default:floor_sandstone"] = true,
	["default:floor_marble"] = true,
	["default:floor_s_yellow"] = true,
	["default:floor_s_white"] = true,
	["default:floor_s_violet"] = true,
	["default:floor_s_red"] = true,
	["default:floor_s_pink"] = true,
	["default:floor_s_orange"] = true,
	["default:floor_s_magenta"] = true,
	["default:floor_s_green"] = true,
	["default:floor_s_dark_green"] = true,
	["default:floor_s_cyan"] = true,
	["default:floor_s_brown"] = true,
	["default:floor_s_blue"] = true,
	["default:floor_s_black"] = true,
	["default:floor_s_blackwhite"] = true,
	["default:floor_s_whiteblue"] = true,
	["default:floor_s_blueyellow"] = true,
	["default:floor_s_yellowgreen"] = true,
	["default:floor_s_greengreen"] = true,
	["default:floor_s_magentacyan"] = true,
	["default:floor_s_cyanblue"] = true,
	["default:floor_s_redorange"] = true,
	["default:floor_s_greenblack"] = true,
	["default:floor_s_blackviolet"] = true,
	["default:floor_s_yellowred"] = true,
	["default:floor_s_whitered"] = true,
	["default:floor_s_greenviolet"] = true,
	["default:floor_s_violetyellow"] = true,
	["default:stonewall_yellow"] = true,
	["default:stonewall_white"] = true,
	["default:stonewall_violet"] = true,
	["default:stonewall_red"] = true,
	["default:stonewall_pink"] = true,
	["default:stonewall_orange"] = true,
	["default:stonewall_magenta"] = true,
	["default:stonewall_green"] = true,
	["default:stonewall_dark_green"] = true,
	["default:stonewall_cyan"] = true,
	["default:stonewall_brown"] = true,
	["default:stonewall_blue"] = true,
	["default:stonewall_black"] = true,
}

-- a small margin to avoid Z-fighting
local small = 1/128

for i, entry in ipairs (carpet_tab) do
	local carpetname = entry[1]
	local carpetdesc = entry[2]

	minetest.register_node("gluncarp:"..carpetname, {
		description = carpetdesc.." Carpet",
		drawtype = "nodebox",
		tiles = {"gluncarp_"..carpetname..".png"},
		inventory_image = "gluncarp_"..carpetname.."_inv.png",
		wield_image = "gluncarp_"..carpetname..".png",
		paramtype = "light",
		is_ground_content = true,
		walkable = true,
		buildable_to = false,
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -7/16, 1/2},
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -9/16, -1/2, 1/2, -1/2, 1/2},
		},
		node_box =
		{
			type = "fixed",
			fixed = {
				{-1/2 - small, -1/2, -1/2 - small, 1/2 + small, -1/2 + small, 1/2 + small},

				{1/2 - small, -10/16, -1/2 - small, 1/2 + small, -1/2, 1/2 + small},
				{-1/2 - small, -10/16, 1/2 - small, 1/2 + small, -1/2, 1/2 + small},
				{-1/2 - small, -10/16, -1/2 - small, -1/2 + small, -1/2, 1/2 + small},
				{-1/2 - small, -10/16, -1/2 - small, 1/2 + small, -1/2, -1/2 + small},
			},
		},
		groups = {dig_immediate=2, gluncarp=1},

		after_place_node = function(pos, placer, itemstack, pointed_thing)
			local under_pos = {x=pos.x, y=pos.y-1, z=pos.z}
			local under_name = minetest.get_node(under_pos).name
			if underground_tab[under_name] then
				minetest.set_node(under_pos, {name = "gluncarp:"..carpetname.."_on_" .. under_name:match(":(.+)$")})
				minetest.remove_node(pos)
			end
		end,
	})

	for node_name in pairs (underground_tab) do
		local def = minetest.registered_nodes[node_name]
		local mat = node_name:match(":(.+)$")
		local desc = def.short_description or def.description
		local image
		if type(def.tiles[1]) == "string" then
			image = def.tiles[1]
		else
			image = def.tiles[1].name
		end
		minetest.register_node("gluncarp:"..carpetname.."_on_"..mat, {
			description = carpetdesc.." Carpet on "..desc,
			tiles = {
				"gluncarp_"..carpetname..".png",
				image,
				image.."^gluncarp_side_"..carpetname..".png",
			},
			paramtype = "light",
			is_ground_content = true,
			walkable = true,
			buildable_to = false,
			groups = {dig_immediate=2, gluncarp=1, not_in_creative_inventory=1},
			drop = "gluncarp:"..carpetname,

			after_dig_node = function(pos, oldnode, oldmetadata, digger)
				minetest.set_node(pos, {name = node_name})
			end
		})
	end
end
