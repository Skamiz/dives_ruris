-- Modified for Dives Ruris 2015 by Glünggi.
-- add some new recipe an disable some original recipe

--[[
   3D Forniture
   
   Copyright 2012 Tonyka
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   Contributors:

    InfinityProject

        suggested creating bathroom kit.

    cosarara97

        code.
   
]]--

-- Deco Home

	--Table
	minetest.register_craft( {
		output = '3dforniture:table',
		recipe = {
			{ 'group:wood','group:wood', 'group:wood' },
			{ 'default:stick', '', 'default:stick' },
			{ 'default:stick', '', 'default:stick' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:table_black',
		recipe = {
			{ 'group:wtable','dye:black', '' },
		},
	})

	minetest.register_craft( {
		output = '3dforniture:table_white',
		recipe = {
			{ 'group:wtable','dye:white', '' },
		},
	})
	
	minetest.register_craft({
		type = 'fuel',
		recipe = 'group:wtable',
		burntime = 30,
	})
	
		--smallTable
	minetest.register_craft( {
		output = '3dforniture:table_s',
		recipe = {
			{ 'group:wood','group:wood', 'group:wood' },
			{ 'default:stick', '', 'default:stick' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:table_black_s',
		recipe = {
			{ 'group:wtables','dye:black', '' },
		},
	})

	minetest.register_craft( {
		output = '3dforniture:table_white_s',
		recipe = {
			{ 'group:wtables','dye:white', '' },
		},
	})
	
	minetest.register_craft({
		type = 'fuel',
		recipe = 'group:wtables',
		burntime = 20,
	})
    -- cabinet
	minetest.register_craft( {
		output = '3dforniture:cabinet',
		recipe = {
			{ 'group:stick','group:stick', 'group:stick'},
			{ 'group:stick','group:wood', 'default:steel_ingot'},
			{ 'group:stick','group:stick', 'group:stick'},
		},
	})
	
	minetest.register_craft({
		type = 'fuel',
		recipe = '3dforniture:cabinet',
		burntime = 40,
	})
	
	--Chair
	minetest.register_craft( {
		output = '3dforniture:chair 2',
		recipe = {
			{ 'default:stick',''},
			{ 'group:wood','group:wood' },
			{ 'default:stick','default:stick' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:chair_black',
		recipe = {
			{ 'group:chair','dye:black'},
		},
	})
	
		minetest.register_craft( {
		output = '3dforniture:chair_white',
		recipe = {
			{ 'group:chair','dye:white'},
		},
	})

	minetest.register_craft({
		type = 'fuel',
		recipe = 'group:chair',
		burntime = 15,
	})

	--Armchair
	minetest.register_craft( {
		output = '3dforniture:armchair 2',
		recipe = {
			{ 'group:wood',''},
			{ 'group:wood','wool:black' },
			{ 'group:wood','group:wood' },
		},
	})
	
		minetest.register_craft( {
		output = '3dforniture:armchair',
		recipe = {
			{ 'group:achair','dye:black'},
		},
	})
	
	
	minetest.register_craft( {
		output = '3dforniture:armchair_white',
		recipe = {
			{ 'group:achair','dye:white' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:armchair_blue',
		recipe = {
			{ 'group:achair','dye:blue' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:armchair_brown',
		recipe = {
			{ 'group:achair','dye:brown' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:armchair_red',
		recipe = {
			{ 'group:achair','dye:red' },
		},
	})
	
	minetest.register_craft( {
		output = '3dforniture:armchair_green',
		recipe = {
			{ 'group:achair','dye:dark_green' },
		},
	})

	minetest.register_craft({
		type = 'fuel',
		recipe = 'group:achair',
		burntime = 30,
	})

	--Table Lamp
	minetest.register_craft( {
		output = '3dforniture:table_lamp_off',
		recipe = {
			{'default:paper','default:torch' ,'default:paper'},
			{'','default:stick',''},
			{'','group:wood',''},
		},
	})

	minetest.register_craft({
		type = 'fuel',
		recipe = '3dforniture:table_lamp_off',
		burntime = 10,
	})

	-- Bathroom Kit

		--Toilet
		minetest.register_craft( {
			output = '3dforniture:toilet',
			recipe = {
				{'default:clay','',''},
				{ 'default:clay','group:wood', '' },
				{ 'default:clay', 'bucket:bucket_empty', '' },
			},
		})

		--Sink
		minetest.register_craft( {
			output = '3dforniture:sink',
			recipe = {
				{ 'default:clay','default:clay', 'default:clay' },
				{ '','default:steel_ingot', '' },
			},
		})

		--Taps
		minetest.register_craft( {
			output = '3dforniture:taps',
			recipe = {
				{ 'default:bronze_ingot','default:steel_ingot', 'default:bronze_ingot' },
			},
		})

		--Shower Tray
		minetest.register_craft( {
			output = '3dforniture:shower_tray',
			recipe = {
				{ 'default:steel_ingot','default:steel_ingot', 'default:steel_ingot' },
				{ '','default:bronze_ingot', '' },
			},
		})

		--Shower Head
		minetest.register_craft( {
			output = '3dforniture:shower_head',
			recipe = {
				{'default:steel_ingot', 'default:bronze_ingot'},
			},
		})

-- Medieval Forniture

	--Bars
	minetest.register_craft( {
		output = '3dforniture:bars 10',
		recipe = {
			{ 'default:steel_ingot','default:steel_ingot','default:steel_ingot' },
			{ 'default:steel_ingot','default:steel_ingot','default:steel_ingot' },
		},
	})

	-- L Binding Bars
	minetest.register_craft( {
		output = '3dforniture:L_binding_bars 4',
		recipe = {
			{ '3dforniture:bars','' },
			{ '3dforniture:bars','3dforniture:bars' },
		},
	})

	--Chains
	minetest.register_craft( {
		output = '3dforniture:chains 4',
		recipe = {
			{'','default:steel_ingot',''},
			{ 'default:steel_ingot','', 'default:steel_ingot' },
			{ '', 'default:steel_ingot', '' },
		},
	})

	--Torch Wall
	--minetest.register_craft( {
		--output = '3dforniture:torch_wall',
		--recipe = {
			--{ 'default:coal_lump' },
			--{ 'default:steel_ingot' },
		--},
	--})
