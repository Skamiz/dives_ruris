-- This is a fork of the original vines mod. most of the originalcode is raped.
-- all Chances wtfp lizences

local mod_name = "vines"
local average_height = 12
local spawn_interval = 90
local vines_group = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1}
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



minetest.register_node("vines:side", {
  description = "Vine",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_side.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_side.png",
  groups = vines_group,
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})

minetest.register_node("vines:side_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_side_rotten.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_side.png",
  groups = {snappy = 3,flammable=2,hanging_node=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

minetest.register_node("vines:side2", {
  description = "Vine",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_side2.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_side2.png",
  groups = vines_group,
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})

minetest.register_node("vines:side2_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_side2_rotten.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_side2.png",
  groups = {snappy = 3,flammable=2,hanging_node=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})


-- yellow

minetest.register_node("vines:willow", {
  description = "Vine Yellow",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_willow.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_willow.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_yellow=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})



minetest.register_node("vines:willow_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_willow_rotten.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_willow.png",
  groups = {snappy = 3,flammable=2,hanging_node=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

-- magenta

minetest.register_node("vines:magenta", {
  description = "Vine Magenta",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_magenta.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_magenta.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_magenta=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})

minetest.register_node("vines:magenta_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_magenta.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_magenta.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_magenta=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

-- white

minetest.register_node("vines:white", {
  description = "Vine White",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_white.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_white.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_white=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})

minetest.register_node("vines:white_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  -- paramtype2 = "wallmounted",
  tiles = { "vines_white.png" },
  drawtype = "plantlike",
  -- drawtype = "signlike",
  inventory_image = "vines_white.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_white=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

-- cyan

minetest.register_node("vines:cyan", {
  description = "Vine Cyan",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  drawtype = "plantlike",
  --paramtype2 = "wallmounted",
  tiles = { "vines_cyan.png" },
  --drawtype = "signlike",
  inventory_image = "vines_cyan.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_cyan=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})

minetest.register_node("vines:cyan_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  --paramtype2 = "wallmounted",
  tiles = { "vines_cyan.png" },
  drawtype = "plantlike",
  --drawtype = "signlike",
  inventory_image = "vines_cyan.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_cyan=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
})

--red 
minetest.register_node("vines:red", {
  description = "Vine Red",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  drawtype = "plantlike",
  --paramtype2 = "wallmounted",
  tiles = { "vines_red.png" },
  --drawtype = "signlike",
  inventory_image = "vines_red.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2, hanging_node=1, color_red=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))
      end
    end
  end
})

minetest.register_node("vines:red_rotten", {
  description = "Vine",
  walkable = false,
  climbable = false,
  sunlight_propagates = true,
  paramtype = "light",
  drop = "",
  --paramtype2 = "wallmounted",
  tiles = { "vines_red.png" },
  drawtype = "plantlike",
  --drawtype = "signlike",
  inventory_image = "vines_red.png",
  groups = {attached_node=1,vines=1,snappy=3,flammable=2,hanging_node=1,color_red=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	
})

--

minetest.register_node("vines:root", {
  description = "Vine",
  walkable = false,
  climbable = true,
  sunlight_propagates = true,
  paramtype = "light",
  tiles = { "vines_root.png" },
  drawtype = "plantlike",
  inventory_image = "vines_root.png",
  groups = {vines=1,snappy = 3,flammable=2,hanging_node=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
    type = "fixed",
    fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
  },
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded if user:get_wielded_item() ~= nil then wielded = user:get_wielded_item() else return end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))      end
    end
  end
})



minetest.register_node("vines:vine", {
  description = "Vine",
  walkable = false,
  climbable = true,
  sunlight_propagates = true,
  drop = "",
  paramtype = "light",
  tiles = { "vines_vine.png" },
  drawtype = "plantlike",
  inventory_image = "vines_vine.png",
  groups = vines_group,
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
    type = "fixed",
    fixed = {-0.3, -1/2, -0.3, 0.3, 1/2, 0.3},
  },
  after_dig_node = function(pos, oldnode, oldmetadata, user)
    local wielded 
	if user:get_wielded_item() ~= nil then 
	wielded = user:get_wielded_item() 
	else 
	return 
	end
    if 'vines:shears' == wielded:get_name() then 
      local inv = user:get_inventory()
      if inv then
        inv:add_item("main", ItemStack(oldnode.name))      end
    end
  end
})



minetest.register_node("vines:vine_rotten", {
  description = "Rotten vine",
  walkable = false,
  climbable = true,
  drop = "",
  sunlight_propagates = true,
  paramtype = "light",
  tiles = { "vines_vine_rotten.png" },
  drawtype = "plantlike",
  inventory_image = "vines_vine_rotten.png",
  groups = {snappy = 3,flammable=2,hanging_node=1},
  sounds = default.node_sound_leaves_defaults(),
  selection_box = {
    type = "fixed",
    fixed = {-0.3, -1/2, -0.3, 0.3, 1/2, 0.3},
  },
})



--ABM

minetest.register_abm({
  nodenames = {"vines:vine", "vines:side", "vines:side2", "vines:willow", "vines:magenta", "vines:white", "vines:cyan", "vines:red"},
  interval = 300,
  chance = 8,
  action = function(pos, node, active_object_count, active_object_count_wider)
    if minetest.find_node_near(pos, 5, "group:tree") == nil then
      -- walldir = node.param2
      minetest.add_node(pos, {name=node.name.."_rotten"})
    end
  end
})



minetest.register_abm({
  nodenames = {"vines:vine", "vines:side", "vines:side2", "vines:willow", "vines:magenta", "vines:white", "vines:cyan", "vines:red"},
  interval = 300,
  chance = 2,
  action = function(pos, node, active_object_count, active_object_count_wider)
    local p = {x=pos.x, y=pos.y-1, z=pos.z}
    local n = minetest.get_node(p)
    if n.name == "air" then
      -- walldir = node.param2
      minetest.add_node(p, {name=node.name})
    end
  end
})



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

--Craft

minetest.register_craft({
  output = 'vines:rope_block',
  recipe = {
    {'', 'group:wood', ''},
    {'', 'vines:side', ''},
    {'', 'vines:side', ''},
  }
})



minetest.register_craftitem("vines:vines", {
  description = "Vines",
  inventory_image = "vines_item.png",
})


--spawning
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
			        minetest.set_node(pos, {name = "vines:willow"})
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



--[[
minetest.register_node("vines:vines_block",{
                        description = "Vines block",
                        sunlight_propagates = true,
                        climbable = true,
                        tiles = {"vines_block.png", "vines_block.png", "vines_block.png"},
                        drawtype = "allfaces_optional",
                        paramtype = "light",
                        groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2 },
                        sounds = default.node_sound_dirt_defaults(),
})


minetest.register_craft({
        output = 'vines:vines_block',
        recipe = {
                 {'farming:string', '', 'farming:string'},
                 {'', 'group:vines', ''},
                 {'farming:string', '', 'farming:string'},
                 }
})



local ENABLE_STAIRSPLUS = true


if minetest.get_modpath("moreblocks") and ENABLE_STAIRSPLUS then
	register_stair_slab_panel_micro(
		"vines",
		"vines_block",
		"vines:vines_block",
		{choppy=2, oddly_breakable_by_hand=2, flammable=2},
        	{
                	"vines_block.png", 
                	"vines_block.png", 
                	"vines_block.png", 
                	"vines_block.png", 
                	"vines_block.png", 
                	"vines_block.png"
		},
		"Vines",
		"vines_block",
		0
	)
	table.insert(circular_saw.known_stairs, "vines:vines_block")
end
--]]
print("[Vines] Loaded!")
