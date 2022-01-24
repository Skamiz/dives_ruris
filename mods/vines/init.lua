-- This is a fork of the original vines mod. most of the originalcode is raped.
-- all Chances wtfp lizences

-- Heavily edited by Skamiz for dives ruris restoratioin


local vine_prototype = {
	walkable = false,
    climbable = true,
	sunlight_propagates = true,
    paramtype = "light",
	drawtype = "plantlike",
	groups = {},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
  		type = "fixed",
  		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
  	},
	-- after_destruct = function(pos, oldnode)
	-- 	pos.y = pos.y - 1
	-- 	if minetest.get_node(pos).name == oldnode.name then
	-- 		minetest.remove_node(pos)
	-- 	end
	-- end,
}

local function register_vine(name, def)
	for k, v in pairs(vine_prototype) do
		if def[k] == nil then
			def[k] = v
		end
	end

	def.drop = {
		items = {{
			tools = {"vines:shears"},
			items = {name},
		}},
	}

	def.groups.vines = 1
	def.groups.snappy = 3
	def.groups.flammable = 2
	def.groups.hanging_node = 1

	minetest.register_node(name, def)
end

register_vine("vines:vine", {
	description = "Vine",
	tiles = {"vines_vine.png"},
	inventory_image = "vines_vine.png",
})

register_vine("vines:side", {
	description = "Vine",
	tiles = {"vines_side.png"},
	inventory_image = "vines_side.png",
})

register_vine("vines:side2", {
	description = "Vine",
	tiles = {"vines_side2.png"},
	inventory_image = "vines_side2.png",
})

register_vine("vines:yellow", {
	description = "Yellow Vine",
	tiles = {"vines_yellow.png"},
	inventory_image = "vines_yellow.png",
	groups = {color_yellow = 1},
})

register_vine("vines:magenta", {
	description = "Magenta Vine",
	tiles = {"vines_magenta.png"},
	inventory_image = "vines_magenta.png",
	groups = {color_magenta = 1},
})

register_vine("vines:white", {
	description = "White Vine",
	tiles = {"vines_white.png"},
	inventory_image = "vines_white.png",
	groups = {color_white = 1},
})

register_vine("vines:cyan", {
	description = "Cyan Vine",
	tiles = {"vines_cyan.png"},
	inventory_image = "vines_cyan.png",
	groups = {color_cyan = 1},
})

register_vine("vines:red", {
	description = "Red Vine",
	tiles = {"vines_red.png"},
	inventory_image = "vines_red.png",
	groups = {color_red = 1},
})

register_vine("vines:root", {
	description = "Root",
	tiles = {"vines_root.png"},
	inventory_image = "vines_root.png",
	selection_box = {
	    type = "fixed",
	    fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
  	},
})



-- Nodes
minetest.register_node("vines:rope_block", {
  description = "Rope",
  sunlight_propagates = true,
  paramtype = "light",
  tiles = {
    "default_wood.png^vines_rope.png",
    "default_wood.png^vines_rope.png",
    "default_wood.png",
    "default_wood.png",
    "default_wood.png^vines_rope.png",
    "default_wood.png^vines_rope.png",
  },
  drawtype = "cube",
  groups = {choppy=2,oddly_breakable_by_hand=1},
  after_place_node = function(pos)
    local p = {x=pos.x, y=pos.y-1, z=pos.z}
    local n = minetest.get_node(p)
    if n.name == "air" then
      minetest.add_node(p, {name="vines:rope_end"})
    end
  end,
  after_dig_node = function(pos, node, digger)
    local p = {x=pos.x, y=pos.y-1, z=pos.z}
    local n = minetest.get_node(p)
    while n.name == 'vines:rope' do
      minetest.remove_node(p)
      p = {x=p.x, y=p.y-1, z=p.z}
      n = minetest.get_node(p)
    end
    if n.name == 'vines:rope_end' then
      minetest.remove_node(p)
    end
  end
})

minetest.register_node("vines:rope", {
  description = "Rope",
  walkable = false,
  climbable = true,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  tiles = { "vines_rope.png" },
  drawtype = "plantlike",
  groups = {flammable=2, not_in_creative_inventory=1},
  sounds =  default.node_sound_leaves_defaults(),
  selection_box = {
    type = "fixed",
    fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
  },
  on_destruct = function()

  end,
})

minetest.register_node("vines:rope_end", {
  description = "Rope",
  walkable = false,
  climbable = true,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  tiles = { "vines_rope_end.png" },
  drawtype = "plantlike",
  groups = {flammable=2, not_in_creative_inventory=1},
  sounds =  default.node_sound_leaves_defaults(),
  after_place_node = function(pos)
    yesh  = {x = pos.x, y= pos.y-1, z=pos.z}
    minetest.add_node(yesh, {name="vines:rope"})
  end,
  selection_box = {
	  type = "fixed",
	  fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
  },
})





--Craft

minetest.register_craft({
  output = 'vines:rope_block',
  recipe = {
    {'vines:vine_rope', 'vines:vine_rope', 'vines:vine_rope'},
    {'vines:vine_rope', 'group:wood', 'vines:vine_rope'},
    {'vines:vine_rope', 'vines:vine_rope', 'vines:vine_rope'},
  }
})

minetest.register_craft({
  output = 'vines:vine_rope',
  recipe = {
    {'group:vines', 'group:vines'},
    {'group:vines', 'group:vines'},
    {'group:vines', 'group:vines'},
  }
})

minetest.register_craftitem("vines:vine_rope", {
  description = "Vine Rope",
  inventory_image = "vines_item.png",
})

--ABM

-- grow vines downwards
minetest.register_abm({
	nodenames = {"vines:vine", "vines:side", "vines:side2", "vines:yellow", "vines:magenta", "vines:white", "vines:cyan", "vines:red"},
	interval = 300,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
	  	if node.param2 == 1 then
			return
		elseif node.param2 == 0 then
			node.param2 = math.random(6, 12)
			minetest.set_node(pos, node)
			return
		end
		local under = {x=pos.x, y=pos.y-1, z=pos.z}
		local under_node = minetest.get_node(under)
		if minetest.registered_nodes[under_node.name].drawtype == "airlike" then
			node.param2 = node.param2 - 1
			minetest.set_node(under, node)
		end
	end
})

-- lenghten rope
minetest.register_abm({
  nodenames = {"vines:rope_end"},
  interval = 1,
  chance = 1,
  drop = "",
  action = function(pos, node, active_object_count, active_object_count_wider)
    local p = {x=pos.x, y=pos.y-1, z=pos.z}
    local n = minetest.get_node(p)
    --remove if top node is removed
    if  n.name == "air" then
      minetest.set_node(pos, {name="vines:rope"})
      minetest.add_node(p, {name="vines:rope_end"})
    end
  end
})

--spawning

-- grow vines under leaves
minetest.register_abm({
	nodenames = {"group:leaves"},
	interval = 43,
	chance = 3,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y-1, z=pos.z}
		local name = minetest.get_node(above).name
		local sel = math.random(1,23)
		local pos0 = {x=pos.x-5,y=pos.y-5,z=pos.z-5}
		local pos1 = {x=pos.x+5,y=pos.y+5,z=pos.z+5}
	    if #minetest.find_nodes_in_area(pos0, pos1, "default:tree_jungle") > 1 then
		   if #minetest.find_nodes_in_area(pos0, pos1, "group:vines") > 5 then
		      return
		   else
		      if name == "air" then
		         pos.y = pos.y-1
		         if sel == 1 or sel == 7 or sel == 8 then
			        minetest.set_node(pos, {name = "vines:side"})
				 elseif sel == 2 or sel == 9 then
			        minetest.set_node(pos, {name = "vines:yellow"})
				 elseif sel == 3 or sel == 10 then
			        minetest.set_node(pos, {name = "vines:white"})
				 elseif sel == 4 then
			        minetest.set_node(pos, {name = "vines:magenta"})
				 elseif sel == 5 then
			        minetest.set_node(pos, {name = "vines:cyan"})
				 elseif sel == 6 or sel == 11 then
			        minetest.set_node(pos, {name = "vines:red"})
				 else
			        minetest.set_node(pos, {name = "vines:side2"})
			     end
			  end
		   end
		end
	end
})

-- grow roots under soils
minetest.register_abm({
	nodenames = {"group:soil"},
	interval = 43,
	chance = 3,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y-1, z=pos.z}
		local name = minetest.get_node(above).name
		local pos0 = {x=pos.x-5,y=pos.y-5,z=pos.z-5}
		local pos1 = {x=pos.x+5,y=pos.y+5,z=pos.z+5}
	    if #minetest.find_nodes_in_area(pos0, pos1, "group:tree") > 1 then
		   if #minetest.find_nodes_in_area(pos0, pos1, "group:vines") > 5 then
		      return
		   else
		      if name == "air" then
		         pos.y = pos.y-1
			     minetest.set_node(pos, {name = "vines:vine"})
			  end
		   end
		end
	end
})

--Shears jojoa1997's shears

minetest.register_tool("vines:shears", {
	description = "Shears for plants and woolblocks",
	inventory_image = "shears.png",
	wield_image = "shears.png",
	stack_max = 1,
	max_drop_level=3,
	tool_capabilities = {
    full_punch_interval = 1.0,
	max_drop_level=0,
    groupcaps={
      snappy={times={[3]=0.2}, uses=100, maxlevel=3},
      wool={times={[3]=0.2}, uses=100, maxlevel=3}
    }
  },
})

minetest.register_craft({
	output = 'vines:shears',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'group:stick', 'group:wood', 'default:steel_ingot'},
		{'', '', 'group:stick'},
	}
})


minetest.register_node("vines:vine_block",{
	description = "Vines block",
	walkable = false,
	climbable = true,
	sunlight_propagates = true,
	paramtype = "light",
	drawtype = "glasslike",
	tiles = {{name = "vines_block.png", scale = 2, align_style="world"}},
	use_texture_alpha = "clip",
	groups = {snappy = 3, oddly_breakable_by_hand=3, flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
        output = 'vines:vine_block',
        recipe = {
                 {'group:vines', 'group:vines', 'group:vines'},
                 {'group:vines', 'group:vines', 'group:vines'},
                 {'group:vines', 'group:vines', 'group:vines'},
                 }
})

-- legacy:
minetest.register_alias("vines:willow", "vines:yellow")

print("[Vines] Loaded!")
