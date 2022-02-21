-- copied form fire_arrow.lua and edited by Skamiz

minetest.register_craftitem("throwing:arrow_torch", {
	description = "Torch Arrow (2dmg)",
	inventory_image = "throwing_arrow_torch.png",
})

minetest.register_node("throwing:arrow_torch_box", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			-- Shaft
			{-6.5/17, -1.5/17, -1.5/17, 6.5/17, 1.5/17, 1.5/17},
			--Spitze
			{-4.5/17, 2.5/17, 2.5/17, -3.5/17, -2.5/17, -2.5/17},
			{-8.5/17, 0.5/17, 0.5/17, -6.5/17, -0.5/17, -0.5/17},
			--Federn
			{6.5/17, 1.5/17, 1.5/17, 7.5/17, 2.5/17, 2.5/17},
			{7.5/17, -2.5/17, 2.5/17, 6.5/17, -1.5/17, 1.5/17},
			{7.5/17, 2.5/17, -2.5/17, 6.5/17, 1.5/17, -1.5/17},
			{6.5/17, -1.5/17, -1.5/17, 7.5/17, -2.5/17, -2.5/17},

			{7.5/17, 2.5/17, 2.5/17, 8.5/17, 3.5/17, 3.5/17},
			{8.5/17, -3.5/17, 3.5/17, 7.5/17, -2.5/17, 2.5/17},
			{8.5/17, 3.5/17, -3.5/17, 7.5/17, 2.5/17, -2.5/17},
			{7.5/17, -2.5/17, -2.5/17, 8.5/17, -3.5/17, -3.5/17},
		}
	},
	tiles = {"throwing_arrow_fire.png", "throwing_arrow_fire.png", "throwing_arrow_fire_back.png", "throwing_arrow_fire_front.png", "throwing_arrow_fire_2.png", "throwing_arrow_fire.png"},
	groups = {not_in_creative_inventory=1},
})

local THROWING_ARROW_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"throwing:arrow_torch_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_ARROW_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:get_pos()
	local node = minetest.get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "throwing:arrow_torch_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 2
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 2
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		local def = minetest.registered_nodes[node.name]
		if def.walkable then
			-- placing torch
			local lpos = vector.round(self.lastpos)
			local ldef = minetest.registered_nodes[minetest.get_node(lpos).name]
			local npos = vector.round(pos)

			if ldef.air_equivalent then
				if npos.y < lpos.y then
					minetest.set_node(self.lastpos, {name="default:torch", param2 = 1})
				elseif npos.y > lpos.y then
					minetest.set_node(self.lastpos, {name="default:torch_ceiling", param2 = 0})
				else
					local param2 = minetest.dir_to_wallmounted(vector.subtract(npos, lpos))
					minetest.set_node(self.lastpos, {name="default:torch_wall", param2 = param2})
				end
			else
				minetest.add_item(self.lastpos, "throwing:arrow_torch")
			end
			self.object:remove()
		end
		if math.floor(self.lastpos.x+0.5) ~= math.floor(pos.x+0.5) or math.floor(self.lastpos.y+0.5) ~= math.floor(pos.y+0.5) or math.floor(self.lastpos.z+0.5) ~= math.floor(pos.z+0.5) then
			if minetest.get_node(self.lastpos).name == "throwing:light" then
				minetest.remove_node(self.lastpos)
			end
			if minetest.get_node(pos).name == "air" then
				minetest.set_node(pos, {name="throwing:light"})
			end
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("throwing:arrow_torch_entity", THROWING_ARROW_ENTITY)

minetest.register_craft({
	output = 'throwing:arrow_torch 4',
	recipe = {
		{'default:stick', 'default:stick', 'default:coal_lump'},
	},
})

minetest.register_node("throwing:light", {
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	drawtype = "airlike",
	tiles = {"throwing_empty.png"},
	light_source = minetest.LIGHT_MAX-4,
	pointable = false,
	walkable = false,
	air_equivalent = true,
	selection_box = {
		type = "fixed",
		fixed = {
			{0,0,0,0,0,0}
		}
	},
	groups = {not_in_creative_inventory=1}
})

minetest.register_abm({
	label = "Remove light",
	nodenames = {"throwing:light"},
	interval = 10,
	chance = 1,
	action = function(pos, node)
		minetest.remove_node(pos)
	end
})
