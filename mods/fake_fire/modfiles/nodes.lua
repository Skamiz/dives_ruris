
-- ~~~~~~~~~~~~~~~~
-- FLINT and STEEL
-- ~~~~~~~~~~~~~~~~
local cp = {}
minetest.register_tool("fake_fire:flint_and_steel", {
    description = "Flint and steel (fake)",
    inventory_image = "flint_and_steel.png",
    liquids_pointable = false,
    stack_max = 1,
    tool_capabilities = {
      full_punch_interval = 1.0,
      max_drop_level=0,
      groupcaps={flamable = {uses=25, maxlevel=1},
      }
    },
    on_use = function(itemstack, user, pointed_thing)
    -- This next section took me a lot of keyboard bashing to figure out.
    -- The lua documentation and examples for Minetest are terrible.
    -- ~ LazyJ, 2014_06_23

    local snow_ice_list = {"snow", "ice",}

      for _, which_one_is_it in pairs(snow_ice_list) do
        local snow_ice = which_one_is_it

        if
          -- A *node*, not a player or sprite. ~ LazyJ
          pointed_thing.type == "node"

          --[[
            These next two "and nots" tell Minetest not to put the
            red flame on snow and ice stuff. This "string" bit was
            the workable solution that took many hours, over
            several days, to finally come around to. It's a search
            for any node name that contains whatever is between the
            double-quotes, ie. "snow" or "ice". I had been trying
            to identify the nodes by their group properties and I
            couldn't figure out how to do it. The clue for the
            "string"came from Blockmen's "Landscape" mod.

            Another quirk is that the "string" doesn't work well
            with variable lists (see "snow_ice_list") when using
            "and not". Ice-fire would light on snow but when I
            clicked on ice, the regular flame appeared. I couldn't
            understand what was happening until I mentally changed
            the wording "and not" to "is not" and spoke out-loud
            each thing that line of code was to accomplish:

            "Is not snow, then make fake-fire."
            "Is not ice, then make fake-fire."

            That's when I caught the problem.

            Ice *is not* snow, so Minetest was correctly following
            the instruction, "Is not snow, then make fake-fire."
            and that is why fake-fire appeared instead of ice-fire
            when I clicked on ice.

            ~ LazyJ
          --]]

        and not
        string.find(minetest.get_node(pointed_thing.under).name, "snow")
        and not
        string.find(minetest.get_node(pointed_thing.under).name, "ice")
        and
        minetest.get_node(pointed_thing.above).name == "air"
        then
          if not minetest.is_protected(pointed_thing.above,
          user:get_player_name())
          then
            minetest.set_node(pointed_thing.above,
            {name="fake_fire:smokeless_fire"}
            )
          else
            minetest.chat_send_player(
            user:get_player_name(), "No-no! You are not allowed put fire there!"
            )
          end

      elseif

        pointed_thing.type == "node"
        and
        -- Split this "string" across several lines because I ran out
        -- of room while trying to adhere to the 80-column wide rule
        -- of coding style.
        string.find(
            minetest.get_node(pointed_thing.under).name,
            snow_ice
            )
        and
        minetest.get_node(pointed_thing.above).name == "air"
        then
          if not minetest.is_protected(pointed_thing.above,
          user:get_player_name())
          then
            minetest.set_node(pointed_thing.above,
            {name="fake_fire:smokeless_ice_fire"}
            )
          else
            minetest.chat_send_player(
            user:get_player_name(), "No-no! You are not allowed put fire there!"
            )
          end
      end -- if
    end -- for/do

      minetest.sound_play("",
      {gain = 1.0, max_hear_distance = 2,})
      itemstack:add_wear(65535/25)
      return itemstack
  end
}) -- Closes the flint and steel tool registration



--[[

  SOME LESSONS LEARNED (and keeping this because I'll forget)

  flint_and_steel is registered as a tool. Tools do not materialize something
  like placing a block (on_construct) makes that block appear. Tools are
  *used* so "on_use" works but not "on_construct".

  on_rightclick is meant for the code of the thing being clicked on, not the
  code of the thing doing the clicking.

  ~ LazyJ

--]]



-- ~~~~~~~~~~~~~~~~
-- EMBERS
-- ~~~~~~~~~~~~~~~~

minetest.register_node("fake_fire:embers", {
    description = "Glowing Embers",
    tiles = {
      {name="embers_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=2}},
      },
    inventory_image = minetest.inventorycube('fake_fire_embers.png'),
    is_ground_content = true,
    light_source = 9,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because embers produce some light it should be somewhat "true" but this
    -- is an area where Minetest lacks in subtlety so I'm opting for 100% that
    -- embers *don't* have a shadow.
    sunlight_propagates = true,
    -- It's almost soft, brittle charcoal. ~ LazyJ
    groups = {choppy=3, crumbly=3, oddly_breakable_by_hand=3},
    paramtype = "light",
    -- You never know when a creative builder may use the screwdriver or
    -- position to create a subtle effect that makes their creation just
    -- that little bit nicer looking. ~ Lazyj
    paramtype2 = "facedir",
    walkable = true,
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
})



--[[

  There are two types of smoke columns. One drifts southward with the flow
  of the clouds and it is intended for flames and chimney_tops that are out
  in the open. If this column of smoke is used *inside* chimneys the smoke will
  pass through the walls of the chimney.

  The second smoke column is a narrow, vertical column that *is* intended for
  the inside of chimneys. A vertical-space check is run to determine which node
  to set, when punched, and those nodes trigger a specific column of smoke.

  The vertical-space check is not perfect. There are situations where it is
  desirable to have smoke pass through what is above (tree leaves,
  lattice canopy, cave ceiling). Then there are situations where it is *not*
  desirable to have smokk pass through what is above, like apartment and office
  building floors. Catch 22.

  ~ LazyJ, 2014_07_28

--]]



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- THE SMOKE COLUMN TYPE IS DETERMINED BY THE FOLLOWING NODES
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- CHIMNEY TOPS

  -- Stone (cool tone) to go with cool colors.
  -- Sandstone (warm tone) to go with warm colors.

-- NON-DRIFTING SMOKE, CHIMNEY TOP - STONE
minetest.register_node("fake_fire:chimney_top_stone", {
    description = "Chimney Top - Stone",
    tiles = {"chimney_top_stone.png", "default_stone.png"},
    is_ground_content = true,
    groups = {cracky=3, oddly_breakable_by_hand=1, not_in_creative_inventory=1},
    paramtype = "light",
    sounds = default.node_sound_stone_defaults(),
    drop = "fake_fire:smokeless_chimney_top_stone",
    drawtype = "nodebox",
    node_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
      },
    on_punch = function (pos,node,puncher)
      -- This swaps the smokeless version with the smoky version when punched.
      -- ~ LazyJ
      minetest.set_node(pos, {name = "fake_fire:smokeless_chimney_top_stone"})
    end
})



-- DRIFTING SMOKE, CHIMNEY TOP - STONE
minetest.register_node("fake_fire:chimney_top_stone_d", {
    description = "Drifting Smoke, Chimney Top - Stone",
    tiles = {"chimney_top_stone.png", "default_stone.png"},
    is_ground_content = true,
    groups = {cracky=3, oddly_breakable_by_hand=1, not_in_creative_inventory=1},
    paramtype = "light",
    sounds = default.node_sound_stone_defaults(),
    drop = "fake_fire:smokeless_chimney_top_stone",
    drawtype = "nodebox",
    node_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
      },
    on_punch = function (pos,node,puncher)
      -- This swaps the smokeless version with the smoky version when punched.
      -- ~ LazyJ
      minetest.set_node(pos, {name = "fake_fire:smokeless_chimney_top_stone"})
    end
})



-- NON-DRIFTING SMOKE, CHIMNEY TOP - SANDSTONE
minetest.register_node("fake_fire:chimney_top_sandstone", {
    description = "Chimney Top - Sandstone",
    tiles = {"chimney_top_sandstone.png", "default_sandstone.png"},
    is_ground_content = true,
    groups = {cracky=3, oddly_breakable_by_hand=1, not_in_creative_inventory=1},
    paramtype = "light",
    sounds = default.node_sound_stone_defaults(),
    drop = "fake_fire:smokeless_chimney_top_sandstone",
    drawtype = "nodebox",
    node_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
      },
    on_punch = function (pos,node,puncher)
      -- This swaps the smokeless version with the smoky version when punched.
      -- ~ LazyJ
      minetest.set_node(pos,
        {name = "fake_fire:smokeless_chimney_top_sandstone"})
    end
})



-- DRIFTING SMOKE, CHIMNEY TOP - SANDSTONE
minetest.register_node("fake_fire:chimney_top_sandstone_d", {
    description = "Chimney Top - Sandstone",
    tiles = {"chimney_top_sandstone.png", "default_sandstone.png"},
    is_ground_content = true,
    groups = {cracky=3, oddly_breakable_by_hand=1, not_in_creative_inventory=1},
    paramtype = "light",
    sounds = default.node_sound_stone_defaults(),
    drop = "fake_fire:smokeless_chimney_top_sandstone",
    drawtype = "nodebox",
    node_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
      },
    on_punch = function (pos,node,puncher)
      -- This swaps the smokeless version with the smoky version when punched.
      -- ~ LazyJ
      minetest.set_node(pos,
        {name = "fake_fire:smokeless_chimney_top_sandstone"})
    end
})


-- ~~~~~~~~~~~~~~~~~~~~~~~~~
-- SMOKELESS CHIMNEY TOPS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~

    -- Some players may want a chimney top *without* smoke. This is the node
    -- that will be craftable. To get the smoking variety, simply punch the
    -- node. Same approach is used with the smoking and non-smoking flames.
    -- ~ LazyJ

-- SMOKELESS CHIMNEY TOP - STONE
minetest.register_node("fake_fire:smokeless_chimney_top_stone", {
    description = "Chimney Top - Stone",
    tiles = {"chimney_top_stone.png", "default_stone.png"},
    is_ground_content = true,
    groups = {cracky=3, oddly_breakable_by_hand=1},
    paramtype = "light",
    sounds = default.node_sound_stone_defaults(),
    drawtype = "nodebox",
    node_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
      },
    on_punch = function (pos,node,puncher)
      -- Check if there is likely enough space for the smoke to drift without
      -- passing through chimneys, walls, or other solids.  ~ LazyJ, 2014_07_28
      if
        -- 'If' the space directly south and a 14 nodes up from the flame or
        -- chimney_top is free and clear,... ~LazyJ
        --minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+2, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+3, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+4, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+5, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+6, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+7, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+8, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+9, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+10, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+11, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+12, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+13, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+14, z=pos.z-1}).name == "air"
      then
        -- 'then' set the node that triggers the drifting-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:chimney_top_stone_d"})
      else
        -- 'else' set the node that triggers the non-drifing-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:chimney_top_stone"})
      end
    end
})



-- SMOKELESS CHIMNEY TOP - SANDSTONE
minetest.register_node("fake_fire:smokeless_chimney_top_sandstone", {
    description = "Chimney Top - Sandstone",
    tiles = {"chimney_top_sandstone.png", "default_sandstone.png"},
    is_ground_content = true,
    groups = {cracky=3, oddly_breakable_by_hand=1},
    paramtype = "light",
    sounds = default.node_sound_stone_defaults(),
    drawtype = "nodebox",
    node_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
      },
    on_punch = function (pos,node,puncher)
      -- Check if there is likely enough space for the smoke to drift without
      -- passing through chimneys, walls, or other solids.  ~ LazyJ, 2014_07_28
      if
        -- 'If' the space directly south and a 14 nodes up from the flame or
        -- chimney_top is free and clear,... ~LazyJ
        --minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+2, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+3, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+4, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+5, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+6, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+7, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+8, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+9, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+10, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+11, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+12, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+13, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+14, z=pos.z-1}).name == "air"
      then
        -- 'then' set the node that triggers the drifting-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:chimney_top_sandstone_d"})
      else
      -- 'else' set the node that triggers the non-drifing-smoke ABM. ~ LazyJ
      minetest.set_node(pos, {name = "fake_fire:chimney_top_sandstone"})
      end
    end
})


-- ~~~~~~~~~~~~~
-- FLAME TYPES
-- ~~~~~~~~~~~~~

-- NON-DRIFTING SMOKE FIRE (TRIGGERS SMOKE ABM)
minetest.register_node("fake_fire:fake_fire", {
    description = "Smokey, Fake Fire",
    tiles = {
		  {name="fake_fire_animated.png", animation={type="vertical_frames",
		  aspect_w=16, aspect_h=16, length=1.0}},
		  },
    is_ground_content = true,
   	inventory_image = 'fake_fire.png',
    wield_image = {
		  {name="fake_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
		   },
    drawtype = "plantlike",
    -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
    waving = 1,
    light_source = 14,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because fire produces light it should be "true" so fire *doesn't* have
    -- a shadow.
    sunlight_propagates = true,
    -- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
    -- been disabled for a reason. I don't want griefers lighting players on
    -- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
    --groups = {dig_immediate=3,attached_node=1},
    groups = {
				oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
				not_in_creative_inventory=1
        },
    paramtype = "light",
    walkable = false,
    drop = "",  -- So fire won't return to the inventory. ~ LazyJ
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
		  -- A max_hear_distance of 20 may freak some players out by the "hiss"
		  -- so I reduced it to 5.
		  minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		  max_hear_distance = 5,})
		  -- This swaps the smoky version with the smokeless version. ~ LazyJ
		  minetest.set_node(pos, {name = "fake_fire:smokeless_fire"})
	 end
})



-- DRIFTING-SMOKE FIRE (TRIGGERS D SMOKE ABM)
minetest.register_node("fake_fire:fake_fire_d", {
    description = "Drifing Smoke, Fake Fire",
    tiles = {
      {name="fake_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    is_ground_content = true,
    inventory_image = 'fake_fire.png',
    wield_image = {
      {name="fake_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
       },
    drawtype = "plantlike",
    -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
    waving = 1,
    light_source = 14,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because fire produces light it should be "true" so fire *doesn't* have
    -- a shadow.
    sunlight_propagates = true,
    -- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
    -- been disabled for a reason. I don't want griefers lighting players on
    -- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
    --groups = {dig_immediate=3,attached_node=1},
    groups = {
        oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
        not_in_creative_inventory=1
        },
    paramtype = "light",
    walkable = false,
    drop = "",  -- So fire won't return to the inventory. ~ LazyJ
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
      -- A max_hear_distance of 20 may freak some players out by the "hiss"
      -- so I reduced it to 5.
      -- minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
      -- max_hear_distance = 5,})
      -- This swaps the smoky version with the smokeless version. ~ LazyJ
      minetest.set_node(pos, {name = "fake_fire:smokeless_fire"})
    end
})



-- SMOKELESS FIRE (DOES NOT TRIGGER SMOKE ABM)
minetest.register_node("fake_fire:smokeless_fire", {
    description = "Smokeless, Fake Fire",
    tiles = {
      {name="fake_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    is_ground_content = true,
    inventory_image = 'fake_fire.png',
    wield_image = {
      {name="fake_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    drawtype = "plantlike",
    -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
    waving = 1,
    light_source = 14,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because fire produces light it should be "true" so fire *doesn't* have
    -- a shadow.
    sunlight_propagates = true,
    -- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
    -- been disabled for a reason. I don't want griefers lighting players on
    -- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
    --groups = {dig_immediate=3,attached_node=1},
    groups = {
      oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
      not_in_creative_inventory=1
      },
    paramtype = "light",
    walkable = false,
    drop = "",  -- So fire won't return to the inventory. ~ LazyJ
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
      -- A max_hear_distance of 20 may freak some players out by the "hiss"
      -- so I reduced it to 5.
     minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
      max_hear_distance = 5,})
      -- Check if there is likely enough space for the smoke to drift without
      -- passing through chimneys, walls, or other solids.  ~ LazyJ, 2014_07_28
      if
       -- 'If' the space directly south and a 14 nodes up from the flame or
        -- chimney_top is free and clear,... ~LazyJ
        --minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+2, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+3, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+4, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+5, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+6, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+7, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+8, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+9, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+10, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+11, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+12, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+13, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+14, z=pos.z-1}).name == "air"
      then
        -- 'then' set the node that triggers the drifting-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:fake_fire_d"})
      else
      -- 'else' set the node that triggers the non-drifing-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:fake_fire"})
      end
    end
})



-- NON-DRIFTING SMOKE, ICE FIRE (TRIGGERS SMOKE ABM)
minetest.register_node("fake_fire:ice_fire", {
    description = "Smoky, Fake, Ice Fire",
    tiles = {
      {name="ice_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    is_ground_content = true,
    inventory_image = 'ice_fire.png',
    wield_image = {
      {name="ice_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    drawtype = "plantlike",
    -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
    waving = 1,
    light_source = 14,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because fire produces light it should be "true" so fire *doesn't* have
    -- a shadow.
    sunlight_propagates = true,
    -- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
    -- been disabled for a reason. I don't want griefers lighting players on
    -- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
    --groups = {dig_immediate=3,attached_node=1},
    groups = {
      oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
      not_in_creative_inventory=1
      },
    paramtype = "light",
    walkable = false,
    drop = "",  -- So fire won't return to the inventory. ~ LazyJ
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
      -- A max_hear_distance of 20 may freak some players out by the "hiss"
      -- so I reduced it to 5.
      minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
      max_hear_distance = 5,})
      -- This swaps the smoky version with the smokeless version. ~ LazyJ
      minetest.set_node(pos, {name = "fake_fire:smokeless_ice_fire"})
    end
})



-- DRIFTING SMOKE, ICE FIRE (TRIGGERS D SMOKE ABM)
minetest.register_node("fake_fire:ice_fire_d", {
    description = "Drifting Smoke, Fake, Ice Fire",
    tiles = {
      {name="ice_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    is_ground_content = true,
    inventory_image = 'ice_fire.png',
    wield_image = {
      {name="ice_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    drawtype = "plantlike",
    -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
    waving = 1,
    light_source = 14,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because fire produces light it should be "true" so fire *doesn't* have
    -- a shadow.
    sunlight_propagates = true,
    -- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
    -- been disabled for a reason. I don't want griefers lighting players on
    -- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
    --groups = {dig_immediate=3,attached_node=1},
    groups = {
      oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
      not_in_creative_inventory=1
      },
    paramtype = "light",
    walkable = false,
    drop = "",  -- So fire won't return to the inventory. ~ LazyJ
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
      -- A max_hear_distance of 20 may freak some players out by the "hiss"
      -- so I reduced it to 5.
      minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
      max_hear_distance = 5,})
      -- This swaps the smoky version with the smokeless version. ~ LazyJ
      minetest.set_node(pos, {name = "fake_fire:smokeless_ice_fire"})
    end
})



-- SMOKELESS ICE FIRE (DOES NOT TRIGGER SMOKE ABM)
minetest.register_node("fake_fire:smokeless_ice_fire", {
    description = "Smokeless, Fake, Ice Fire",
    tiles = {
      {name="ice_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    is_ground_content = true,
    inventory_image = 'ice_fire.png',
    wield_image = {
      {name="ice_fire_animated.png", animation={type="vertical_frames",
      aspect_w=16, aspect_h=16, length=1.0}},
      },
    drawtype = "plantlike",
    -- Waving wasn't an option when this mod was written. ~ LazyJ, 2014_03_13
    waving = 1,
    light_source = 14,
    -- Adding sunlight_propagtes and leaving comments as a future reference.
    -- If true, sunlight will go infinitely through this (no shadow is cast).
    -- Because fire produces light it should be "true" so fire *doesn't* have
    -- a shadow.
    sunlight_propagates = true,
    -- damage_per_second = 2*0.5, -- It's *fake* fire. PvP on our server has
    -- been disabled for a reason. I don't want griefers lighting players on
    -- fire or trapping them in blazes. ~ LazyJ, 2014_0_13
    --groups = {dig_immediate=3,attached_node=1},
    groups = {
      oddly_breakable_by_hand=3, dig_immediate=2, attached_node=1,
      not_in_creative_inventory=1
      },
    paramtype = "light",
    walkable = false,
    drop = "",  -- So fire won't return to the inventory. ~ LazyJ
    -- sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
      -- A max_hear_distance of 20 may freak some players out by the "hiss"
      -- so I reduced it to 5.
      minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
      max_hear_distance = 5,})
      -- Check if there is likely enough space for the smoke to drift without
      -- passing through chimneys, walls, or other solids.  ~ LazyJ, 2014_07_28
      if
        -- 'If' the space directly south and a 14 nodes up from the flame or
        -- chimney_top is free and clear,... ~LazyJ
        --minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+2, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+3, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+4, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+5, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+6, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+7, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+8, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+9, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+10, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+11, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+12, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+13, z=pos.z-1}).name == "air" and
        minetest.get_node({x=pos.x, y=pos.y+14, z=pos.z-1}).name == "air"
      then
        -- 'then' set the node that triggers the drifting-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:ice_fire_d"})
      else
        -- 'else' set the node that triggers the non-drifing-smoke ABM. ~ LazyJ
        minetest.set_node(pos, {name = "fake_fire:ice_fire"})
      end
    end
})



-- ANIMATED, RISING, DISPAPPEARING SMOKE

-- Added an alias to remove the old, non-particle smoke. ~ LazyJ, 2014_07_28
minetest.register_alias("fake_fire:smoke", "air")


--[[

	These next two sections of code are a real bonus that I figured out how
	to pull-off. ;)

	The first section creates animated smoke. Trying to figure out how to make
	the animation appear to go upward was a headache.

	The second section places the animated smoke *only* above the fake-fire
	*if* there is nothing but air straight above the fake-fire. I also made
	the smoke skip a space so it looks more like puffs of smoke and made it
	stretch high enough to be used in chimneys. For large builds, a second
	fake-fire will have to be hidden close to the top of the chimney so the
	smoke will be visible. The smoke also emmits a low-level light.

	Yup, I'm proud of this little addition I've made to Semmett9's mod. :D

	~ LazyJ, 2014_03_15


	UPDATE 2014_07_28
	I've learned how to use particles to make smoke so I've commented-out the
	animated smoke node I had created and added an alias to convert the old
	nodes to air.

	~ LazyJ

--]]



--[[
minetest.register_node("fake_fire:smoke", {
	description = "Smoke",
	drawtype = "plantlike",
	waving = 1,
	light_source = 3, -- Just a little light to glow at night. ~ LazyJ
	-- Adding sunlight_propagtes and leaving it commented-out as a future
	-- reference.
	-- If true, sunlight will go infinitely through this (no shadow).
	-- I want smoke to cast a shadow like real smoke does.
	-- Fire, on the other hand, produces light so it should be "true" so fire
	-- *doesn't* have a shadow.
	-- sunlight_propagates = false,
	tiles = {
		{
			image="fake_fire_smoke_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16,
			length=2.0}
		},
	},
	use_texture_alpha = true,
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	drop = "",  -- So smoke won't return to the inventory ~ LazyJ
	  -- The leafdecay makes the smoke disappear if the flame is removed.
	  -- The catch is, because it depends on the leafdecay ABM, if the smoke is
	  -- next to a tree the smoke won't disappear if the flame is removed.
	  -- Eh, minor issue not worth fretting over.
	  -- ~ LazyJ, 2014_03_16
	groups = {leafdecay=1, dig_immediate=3, not_in_creative_inventory=1},
	--sounds = minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
	--	max_hear_distance = 5,})
	on_punch = function (pos,node,puncher)
		-- A max_hear_distance of 20 may freak some players out by the "hiss"
		-- so I reduced it to 5.
		minetest.sound_play("fire_extinguish", {pos = pos, gain = 1.0,
		max_hear_distance = 5,})
	end
})
--]]
