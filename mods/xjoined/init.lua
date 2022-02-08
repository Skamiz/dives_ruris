local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

xjoined = {}
dofile(modpath.."/api.lua")
dofile(modpath.."/content.lua")

-- TODO:
-- minig groups - done
-- optional depends - done
-- recipes - done
-- pane inventory images - done
-- readme with api description and punch explanation - done
