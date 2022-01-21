-- refruit for minetest
-- makes fruits regrowing on the trees.
-- images and code are WTFPL license (2015 by Glünggi)
refruit = {}

--replacement
minetest.register_node(":default:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:apple", param2=1})
		end
	end,

	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "default:apple" then
			   if oldnode.param2 ~= 0 then
			      return
			   end
		       minetest.set_node(pos,{name = "refruit:bud_apple"})
			else
		       return
			end
	end,
})

--register nodes

minetest.register_node("refruit:bud_apple", {
	description = "Apple Bud",
	drawtype = "plantlike",
	tiles = {"refruit_bud_apple.png"},
	inventory_image = "refruit_bud_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1,fruit=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	-- undestructable bud's
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:bud_apple" then
		       minetest.set_node(pos,{name = "refruit:bud_apple"})
			else
		       return
			end
	end,
	--]]
})

minetest.register_node("refruit:flower_apple", {
	description = "Apple Flower",
	drawtype = "plantlike",
	tiles = {"refruit_flower_apple.png"},
	inventory_image = "refruit_flower_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	drop = { -- a little reward for flowerpuncher's xD
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	-- undestructable flower's
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:flower_apple" then
		       minetest.set_node(pos,{name = "refruit:flower_apple"})
			else
		       return
			end
	end,
	--]]
})

--glunggi fruits
local fruit_tab = {
{"olive",   "Olive",   "plantlike"},
{"orange",  "Orange",  "plantlike"},
{"banana",  "Banana",  "torchlike"},
{"cocoa",   "Cocoa",   "plantlike"},
{"coconut", "Coconut", "plantlike"},
}
for i in ipairs (fruit_tab) do
local fruitname = fruit_tab[i][1]
local fruitdesc = fruit_tab[i][2]
local drawtyp   = fruit_tab[i][3]

--replacement
minetest.register_node(":default:fruit_"..fruitname, {
	description = fruitdesc,
	drawtype = drawtyp,
	tiles = {"default_fruit_"..fruitname..".png"},
	inventory_image = "default_fruit_"..fruitname..".png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.375, -0.25, 0.25, 0.375, 0.25}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="default:fruit_"..fruitname, param2=1})
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "default:fruit_"..fruitname then
			   if oldnode.param2 ~= 0 then
			      return
			   end
		       minetest.set_node(pos,{name = "refruit:bud_"..fruitname})
			else
		       return
			end
	end,
})

--register nodes

minetest.register_node("refruit:bud_"..fruitname, {
	description = fruitdesc.." Bud",
	drawtype = "plantlike",
	tiles = {"refruit_bud_"..fruitname..".png"},
	inventory_image = "refruit_bud_"..fruitname..".png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875} ---0.2, -0.5, -0.2, 0.2, 0, 0.2
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1,fruit=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	-- undestructable
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:bud_"..fruitname then
		       minetest.set_node(pos,{name = "refruit:bud_"..fruitname})
			else
		       return
			end
	end,
	--]]
})

minetest.register_node("refruit:flower_"..fruitname, {
	description = fruitdesc.." Flower",
	drawtype = "plantlike",
	tiles = {"refruit_flower_"..fruitname..".png"},
	inventory_image = "refruit_flower_"..fruitname..".png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.1875, -0.3125, -0.1875, 0.1875, 0.3125, 0.1875}
	},
	groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	drop = { -- a little reward for flowerpuncher's xD
		max_items = 1,
		items = {
			{
				items = {'default:stick'},
				rarity = 99,
			},
			{
				items = {'default:stick'},
				rarity = 99
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	-- undestructable
	--[[
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		    if oldnode.name == "refruit:flower_"..fruitname then
		       minetest.set_node(pos,{name = "refruit:flower_"..fruitname})
			else
		       return
			end
	end,
	--]]
})
end






--abm's

minetest.register_abm({
	nodenames = {"refruit:bud_apple"},
	neighbors = {"group:leaves"},
	interval = 34,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_apple"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_apple"},
	neighbors = {"group:leaves"},
	interval = 33,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:apple"})
	end,
})

--

minetest.register_abm({
	nodenames = {"refruit:bud_olive"},
	neighbors = {"group:leaves"},
	interval = 35,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_olive"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_olive"},
	neighbors = {"group:leaves"},
	interval = 34,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:fruit_olive"})
	end,
})

--

minetest.register_abm({
	nodenames = {"refruit:bud_orange"},
	neighbors = {"group:leaves"},
	interval = 36,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_orange"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_orange"},
	neighbors = {"group:leaves"},
	interval = 35,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:fruit_orange"})
	end,
})

--

minetest.register_abm({
	nodenames = {"refruit:bud_banana"},
	neighbors = {"group:leaves"},
	interval = 37,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_banana"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_banana"},
	neighbors = {"group:leaves"},
	interval = 36,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:fruit_banana"})
	end,
})

--

minetest.register_abm({
	nodenames = {"refruit:bud_cocoa"},
	neighbors = {"group:leaves"},
	interval = 38,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_cocoa"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_cocoa"},
	neighbors = {"group:leaves"},
	interval = 37,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:fruit_cocoa"})
	end,
})

--

minetest.register_abm({
	nodenames = {"refruit:bud_coconut"},
	neighbors = {"group:leaves"},
	interval = 39,
	chance = 10,
	action = function(pos, node)
		minetest.set_node(pos, {name="refruit:flower_coconut"})
	end,
})

minetest.register_abm({
	nodenames = {"refruit:flower_coconut"},
	neighbors = {"group:leaves"},
	interval = 38,
	chance = 60,
	action = function(pos, node)
		minetest.set_node(pos, {name="default:fruit_coconut"})
	end,
})
