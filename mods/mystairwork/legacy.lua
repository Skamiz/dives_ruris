local function register_stair_aliases(alias, original_name)
	minetest.register_alias("mystairwork:stair_" .. alias, "mystairwork:stair_" .. original_name)
	minetest.register_alias("mystairwork:stair_out_" .. alias, "mystairwork:stair_out_" .. original_name)
	minetest.register_alias("mystairwork:stair_inn_" .. alias, "mystairwork:stair_inn_" .. original_name)
	minetest.register_alias("mystairwork:stair_pillar_" .. alias, "mystairwork:stair_pillar_" .. original_name)
	minetest.register_alias("mystairwork:stair_slab_" .. alias, "mystairwork:stair_slab_" .. original_name)
	minetest.register_alias("mystairwork:stair_sub_" .. alias, "mystairwork:stair_sub_" .. original_name)
	minetest.register_alias("mystairwork:ramp_" .. alias, "mystairwork:ramp_" .. original_name)
	minetest.register_alias("mystairwork:ramp_out_" .. alias, "mystairwork:ramp_out_" .. original_name)
	minetest.register_alias("mystairwork:ramp_inn_" .. alias, "mystairwork:ramp_inn_" .. original_name)
end

register_stair_aliases("default_snow", "default_snowblock")
register_stair_aliases("default_stone_brick", "default_stonebrick")
register_stair_aliases("default_sandstone_brick", "default_sandstonebrick")
register_stair_aliases("default_obsidian_brick", "default_obsidianbrick")
register_stair_aliases("default_desert_stone_brick", "default_desert_stonebrick")

--[[
These were registered in the code, but were comented out:

default:bronzeblock
default:coalblock
default:copperblock
default:diamondblock
default:glass
default:goldblock
default:gravel
default:lava_source
default:mese
default:obsidian_glass
default:water_source
--]]
