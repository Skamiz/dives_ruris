
--[[

	I commented out this part because:
		1. water and lava buckets are disabled on some servers,
		2. putting out fire with water and especially lava would only make
		a big mess, and...

	As for 'realism':
		* C'mon... This is *fake* fire.
		* Torches have long been impervious to water.
		* Minetest creates surreal worlds so it's OK if some things aren't
		perfectly realistic.
 
	Besides, the fake-fire can be put out by punching it - simple and effective.
	~ LazyJ, 2014_03_14



-- water and lava puts out fake fire --
minetest.register_abm({
	nodenames = {"fake_fire:fake_fire"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		if minetest.env:find_node_near(pos, 1, {"default:water_source",
		"default:water_flowing","default:lava_source",
		"default:lava_flowing"}) then
		minetest.sound_play("fire_extinguish",
		{gain = 1.0, max_hear_distance = 20,})
		node.name = "air"
		minetest.env:set_node(pos, node)
		end
	end
})

--]]



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- The original animated smoke that I created has been replaced by particles.
-- I'm keeping this section for future reference.  ~ LazyJ, 2014_07_28
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- APPEARING & DISAPPEARING SMOKE
--[[

  Do I need an ABM for this? Can I add this to the node definition with an
  "on_construct" or "after_place_node"?
  
  Yes and no.
  
  The on_construct worked, but.. only once. When the leafdecay removed
  the smoke no more new smoke was produced to replace the previous smoke.
  So an ABM is needed to pull-off the appearing and disappearing
  smoke effect.

	This makes the animated smoke appear above the fake-fire.
	The disappearing part is handled by the game engine's leafdecay which
	is defined in the group line of the smoke's node registration in
	the nodes.lua file.

	~ LazyJ
	
--]]



--[[ Code for non-particle smoke. Save for future reference.
minetest.register_abm({
	nodenames = {
				"fake_fire:fake_fire",
				"fake_fire:ice_fire",
				"fake_fire:chimney_top_stone",
				"fake_fire:chimney_top_sandstone"
				},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		if name == "air" or name == "fake_fire:smoke" then
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "fake_fire:smoke"
			and height < 7 do
				height = height+1
				pos.y = pos.y+2
			end
			if height < 7 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="fake_fire:smoke"})
				end
			end
		end
	end,
})
--]]



-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- PARTICLE SMOKE
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~

--[[

	According to VanessaE, particles are handled client-side and therefor
	reduces some of the burden on the server. With some tinkering I found
	that particles can give the illusion that the smoke is drifting in the wind.
	Since clouds always drift north to south in Minetest, the smoke should too.


  A note in minetest_game's default function.lua, suggests that a low interval
  and high chance will spread the load ABMs put on the computers.

	~ LazyJ, 2014_07_28
	
--]]


-- ~~~~~~~~~~~~~~~~~~~~~~~~
-- DRIFTING SMOKE
-- ~~~~~~~~~~~~~~~~~~~~~~~~

-- WHITE, BOTTOM SMOKE
-- Closest to fire, hotter, faster, more dense
minetest.register_abm({
  nodenames = {
        "fake_fire:fake_fire_d",
        "fake_fire:ice_fire_d",
        "fake_fire:chimney_top_stone_d",
        "fake_fire:chimney_top_sandstone_d"
        },
  interval = 1,
  chance = 2,
  action = function(pos, node)
  if
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z}).name == "air"
  then
    local white_or_grey = math.random(2)
    minetest.add_particlespawner({
      amount = 9,
      time = 1,
      minpos = {x=pos.x-0.1, y=pos.y+0.5, z=pos.z-0.3},
      maxpos = {x=pos.x+0.1, y=pos.y+1.5, z=pos.z+0.1},
      minvel = {x=-0.1, y=0.3, z=-0.3},
      maxvel = {x=0.1, y=0.6, z=-0.5},
      minacc = {x=0.0,y=0.3,z=-0.3},
      maxacc = {x=0.0,y=0.6,z=-0.5},
      minexptime = 1,
      maxexptime = 3,
      minsize = 5,
      maxsize = 16,
      collisiondetection = true,
      texture = "smoke_"..white_or_grey..".png"
      })
    end
  end
})



-- GREY, MIDDLE SMOKE
-- Cooler, slower, not as dense.
minetest.register_abm({
  nodenames = {
        "fake_fire:fake_fire_d",
        "fake_fire:ice_fire_d",
        "fake_fire:chimney_top_stone_d",
        "fake_fire:chimney_top_sandstone_d"
        },
-- The white and black smoke interval/chance are 1/2.
-- Grey smoke is in the middle and has to be there to connect the two.
-- So it's interval/chance is 1/1.
-- ~ LazyJ, 2014_07_28
  interval = 1,
  chance = 3,
  action = function(pos, node)
  local mgrey_or_dgrey = math.random(2)
  -- The nodes.lua file does a space check for this area to determine whether
  -- to use drifting smoke or non-drifting smoke. That *would* be enough *if*
  -- nothing is built in this area *after* the smoke has been set in motion.
  -- So I added an extra space check here just for that possibility.
  -- ~ LazyJ, 2014_07_31
  if
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z-1.0}).name == "air"
  then
    minetest.add_particlespawner({
      amount = 7,
      time = 1,
      minpos = {x=pos.x-0.2, y=pos.y+2.0, z=pos.z-1.0},
      maxpos = {x=pos.x+0.2, y=pos.y+3.0, z=pos.z-0.5},
      minvel = {x=-0.1, y=0.3, z=-0.3},
      maxvel = {x=0.1, y=0.6, z=-0.5},
      minacc = {x=0.0,y=0.3,z=-0.3},
      maxacc = {x=0.0,y=0.6,z=-0.5},
      minexptime = 1,
      maxexptime = 6,
      minsize = 5,
      maxsize = 21,
      collisiondetection = true,
      texture = "smoke2_"..mgrey_or_dgrey..".png"
      })
    end
  end
})



-- BLACK, TOP SMOKE
-- Farthest from the fire, coolest, slowest, more spread out.
minetest.register_abm({
  nodenames = {
        "fake_fire:fake_fire_d",
        "fake_fire:ice_fire_d",
        "fake_fire:chimney_top_stone_d",
        "fake_fire:chimney_top_sandstone_d"
        },
  interval = 1,
  chance = 5,
  action = function(pos, node)
  if
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+6.0, z=pos.z-1.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+7.0, z=pos.z-1.0}).name == "air" and

    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z-2.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z-2.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z-2.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z-2.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z-2.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+6.0, z=pos.z-2.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+7.0, z=pos.z-2.0}).name == "air" and

    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z-3.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z-3.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z-3.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z-3.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z-3.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+6.0, z=pos.z-3.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+7.0, z=pos.z-3.0}).name == "air" and
    
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+6.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+7.0, z=pos.z-4.0}).name == "air" and
    
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z-4.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z-5.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z-5.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z-5.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+6.0, z=pos.z-5.0}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+7.0, z=pos.z-5.0}).name == "air"
  then
    minetest.add_particlespawner({
      amount = 5,
      time = 1,
      minpos = {x=pos.x-0.4, y=pos.y+3.0, z=pos.z-5.0},
      maxpos = {x=pos.x+0.4, y=pos.y+7.0, z=pos.z-3.0},
      minvel = {x=-0.1, y=0.3, z=-0.3},
      maxvel = {x=0.1, y=0.6, z=-0.5},
      minacc = {x=0.0,y=0.3,z=-0.3},
      maxacc = {x=0.0,y=0.6,z=-0.5},
      minexptime = 2,
      maxexptime = 4,
      minsize = 1,
      maxsize = 2,
      collisiondetection = true,
      texture = "black_smoke.png"
      })
    end
  end
})



-- ~~~~~~~~~~~~~~~~~~~~~~~~
-- NON-DRIFTING SMOKE
-- ~~~~~~~~~~~~~~~~~~~~~~~~

-- WHITE, BOTTOM SMOKE
-- Closest to fire, hotter, faster, more dense
minetest.register_abm({
  nodenames = {
        "fake_fire:fake_fire",
        "fake_fire:ice_fire",
        "fake_fire:chimney_top_stone",
        "fake_fire:chimney_top_sandstone"
        },
  interval = 1,
  chance = 2,
  action = function(pos, node)
  if
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z}).name == "air"
  then
    local white_or_grey = math.random(2)
    minetest.add_particlespawner({
      amount = 7,
      time = 1,
      minpos = {x=pos.x, y=pos.y+0.5, z=pos.z},
      maxpos = {x=pos.x, y=pos.y+1.5, z=pos.z},
      minvel = {x=0.0, y=0.1, z=0.0},
      maxvel = {x=0.0, y=0.6, z=0.0},
      minacc = {x=0.0,y=0.1,z=0.0},
      maxacc = {x=0.0,y=0.6,z=0.0},
      minexptime = 1.0,
      maxexptime = 3.0,
      minsize = 5,
      -- a maxsize larger than 10 and the biggest smoke particle gets stuck
      -- in a 1x1 chimney flue. ~ LazyJ, 2014_07_30
      maxsize = 10,
      collisiondetection = true,
      texture = "smoke_"..white_or_grey..".png"
      })
    end
  end
})



-- GREY, MIDDLE SMOKE
-- Cooler, slower, not as dense.
minetest.register_abm({
  nodenames = {
        "fake_fire:fake_fire",
        "fake_fire:ice_fire",
        "fake_fire:chimney_top_stone",
        "fake_fire:chimney_top_sandstone"
        },
-- The white and black smoke interval/chance are 1/2.
-- Grey smoke is in the middle and has to be there to connect the two.
-- So it's interval/chance is 1/1.
-- ~ LazyJ, 2014_07_28
  interval = 1,
  chance = 3,
  action = function(pos, node)
  if
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z}).name == "air"
  then
  local mgrey_or_dgrey = math.random(2)
    minetest.add_particlespawner({
      amount = 7,
      time = 1,
      minpos = {x=pos.x, y=pos.y+2.0, z=pos.z},
      maxpos = {x=pos.x, y=pos.y+5.0, z=pos.z},
      minvel = {x=0.0, y=0.3, z=0.0},
      maxvel = {x=0.0, y=0.6, z=0.0},
      minacc = {x=0.0,y=0.3,z=0.0},
      maxacc = {x=0.0,y=0.6,z=0.0},
      minexptime = 3,
      maxexptime = 7,
      minsize = 5,
      -- a maxsize larger than 10 and the biggest smoke particle gets stuck
      -- in a 1x1 chimney flue. ~ LazyJ, 2014_07_30
      maxsize = 10,
      collisiondetection = true,
      texture = "smoke2_"..mgrey_or_dgrey..".png"
      })
    end
  end
})



-- BLACK, TOP SMOKE
-- Farthest from the fire, coolest, slowest, more spread out.
minetest.register_abm({
  nodenames = {
        "fake_fire:fake_fire",
        "fake_fire:ice_fire",
        "fake_fire:chimney_top_stone",
        "fake_fire:chimney_top_sandstone"
        },
  interval = 1,
  chance = 5,
  action = function(pos, node)
  if
    minetest.get_node({x=pos.x, y=pos.y+1.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+2.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+3.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+4.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+5.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+6.0, z=pos.z}).name == "air" and
    minetest.get_node({x=pos.x, y=pos.y+7.0, z=pos.z}).name == "air"
  then
    minetest.add_particlespawner({
      amount = 3,
      time = 1,
      minpos = {x=pos.x, y=pos.y+5.0, z=pos.z},
      maxpos = {x=pos.x, y=pos.y+7.0, z=pos.z},
      minvel = {x=0.0, y=0.3, z=0.0},
      maxvel = {x=0.0, y=0.6, z=0.0},
      minacc = {x=0.0,y=0.3,z=0.0},
      maxacc = {x=0.0,y=0.6,z=0.0},
      minexptime = 1,
      maxexptime = 5,
      minsize = 1,
      maxsize = 2,
      collisiondetection = true,
      texture = "black_smoke.png"
      })
    end
  end
})



--[[
OBSERVATION NOTES
(Since the lua_api.txt is lacking in good explanations and examples.)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* amount
How many particles are created when they "win" the interval and chance lottery. 

* time
I'm not sure about this one. The larger the number was the more particles there
seemed to be produced. When I had it set at 1, there were 3 or 4 particles being
produced. When I had it set at 0 the particles formed a constant stream. Does
this space-out the time the "amount" of particles are created? 0 = the total
"amount" appears at the same time? 2 = two seconds between the creation of each
of the specified "amount"?

* minpos
The closest point from origin the particles will be created at.



* maxpos
The farthest point from origin the particles will be created at.



* minvel
The slowest, sustained speed particles will travel at.



* maxvel
The fastest, sustained speed particles will travel at.



* minacc
x positive = particles move east
x negative = particles move west
y positive = particles move up
y negative = particles move down
z positive = particles move north
z negative = particles move south

Acceleration - particles start moving slowly then pickup speed the farther away
they are from where they first appeared until they reach the maximum velocity
speed. Minimum velocity is the slowest speed at which particles will accelerate.

Maximum Acceleration - I don't understand this one. Once particles reach maximum
velocity they can't accelerate any more so what's the purpose of having a
maximum acceleration?



* maxacc
x positive = particles move east
x negative = particles move west
y positive = particles move up
y negative = particles move down2
z positive = particles move north
z negative = particles move south

Acceleration - particles start moving slowly then pickup speed the farther away
they are from where they first appeared until they reach the maximum velocity
speed.

Maximum Acceleration - I don't understand this one either. Once particles reach
maximum velocity they can't accelerate any more so what's the purpose of having
a maximum acceleration (maxacc)? Maybe the maxacc multiplies the maxvel?? 



minexptime
The shortest amount of time a particle will live.



maxexptime
The longest amount of time a particle will live.

minsize
The smallest size the particles can be when created. This can be much smaller
than the original image's size.



maxsize
The largest size the particles can be when created. This can exceed the image's
original size.



collisiondetection
False - Particles will pass through nodes (blocks).
True - Particles will *not* pass through nodes (block).

In the case of rising smoke, if the flame is from an outdoor bonfire or is
coming through a chimney, then it doesn't matter.

If the fire is in a fireplace in a condominium, the upstairs neighbors may not
appreciate smoke coming up through the floors.



* texture
The image file used for the particle

--]]
