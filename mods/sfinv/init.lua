-- sfinv/init.lua

dofile(minetest.get_modpath("sfinv") .. "/api.lua")

-- Load support for MT game translation.
local S = minetest.get_translator("sfinv")

local craft_fs = {
	"container[2.5,0]",
	"list[current_player;craft;0,0;3,3;]",
	"list[current_player;craftpreview;5,1.25;1,1;]",
	"image[3.75,1.25;1,1;sfinv_crafting_arrow.png]",
	"container_end[]",
	"listring[current_player;main]",
	"listring[current_player;craft]",
}

craft_fs = table.concat(craft_fs)

sfinv.register_page("sfinv:crafting", {
	title = S("Crafting"),
	get = function(self, player, context)
		return sfinv.make_formspec(player, context, craft_fs, true, nil, true)
	end
})
