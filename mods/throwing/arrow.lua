minetest.register_craftitem("throwing:arrow", {
	description = "Steel Arrow (4dmg)",
	inventory_image = "throwing_arrow.png",
})

minetest.register_node("throwing:arrow_box", {
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
	tiles = {"throwing_arrow.png", "throwing_arrow.png", "throwing_arrow_back.png", "throwing_arrow_front.png", "throwing_arrow_2.png", "throwing_arrow.png"},
	groups = {not_in_creative_inventory=1},
})

local THROWING_ARROW_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"throwing:arrow_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_ARROW_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:get_pos()
	local node = minetest.env:get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "throwing:arrow_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 4
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 4
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'throwing:arrow')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("throwing:arrow_entity", THROWING_ARROW_ENTITY)

minetest.register_craft({
	output = 'throwing:arrow 16',
	recipe = {
		{'default:stick', 'default:stick', 'default:steel_ingot'},
	}
})

--stonearrow

minetest.register_craftitem("throwing:arrow_stone", {
	description = "Stone Arrow (3dmg)",
	inventory_image = "throwing_arrow_stone.png",
})

minetest.register_node("throwing:arrow_stone_box", {
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
	tiles = {"throwing_arrow_stone.png", "throwing_arrow_stone.png", "throwing_arrow_stone_back.png", "throwing_arrow_stone_front.png", "throwing_arrow_stone_2.png", "throwing_arrow_stone.png"},
	groups = {not_in_creative_inventory=1},
})

local THROWING_ARROW_STONE_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"throwing:arrow_stone_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_ARROW_STONE_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:get_pos()
	local node = minetest.env:get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "throwing:arrow_stone_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 3
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 3
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'throwing:arrow_stone')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("throwing:arrow_stone_entity", THROWING_ARROW_STONE_ENTITY)

minetest.register_craft({
	output = 'throwing:arrow_stone 16',
	recipe = {
		{'default:stick', 'default:stick', 'default:cobble'},
	}
})

--bronzearrow

minetest.register_craftitem("throwing:arrow_bronze", {
	description = "Bronze Arrow (5dmg)",
	inventory_image = "throwing_arrow_bronze.png",
})

minetest.register_node("throwing:arrow_bronze_box", {
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
	tiles = {"throwing_arrow_bronze.png", "throwing_arrow_bronze.png", "throwing_arrow_bronze_back.png", "throwing_arrow_bronze_front.png", "throwing_arrow_bronze_2.png", "throwing_arrow_bronze.png"},
	groups = {not_in_creative_inventory=1},
})

local THROWING_ARROW_BRONZE_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"throwing:arrow_bronze_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_ARROW_BRONZE_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:get_pos()
	local node = minetest.env:get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "throwing:arrow_bronze_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 5
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 5
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'throwing:arrow_bronze')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("throwing:arrow_bronze_entity", THROWING_ARROW_BRONZE_ENTITY)

minetest.register_craft({
	output = 'throwing:arrow_bronze 16',
	recipe = {
		{'default:stick', 'default:stick', 'default:bronze_ingot'},
	}
})

--diamondarrow

minetest.register_craftitem("throwing:arrow_diamond", {
	description = "Diamond Arrow (6dmg)",
	inventory_image = "throwing_arrow_diamond.png",
})

minetest.register_node("throwing:arrow_diamond_box", {
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
	tiles = {"throwing_arrow_diamond.png", "throwing_arrow_diamond.png", "throwing_arrow_diamond_back.png", "throwing_arrow_diamond_front.png", "throwing_arrow_diamond_2.png", "throwing_arrow_diamond.png"},
	groups = {not_in_creative_inventory=1},
})

local THROWING_ARROW_DIAMOND_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"throwing:arrow_diamond_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_ARROW_DIAMOND_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:get_pos()
	local node = minetest.env:get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "throwing:arrow_diamond_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 6
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 6
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'throwing:arrow_diamond')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("throwing:arrow_diamond_entity", THROWING_ARROW_DIAMOND_ENTITY)

minetest.register_craft({
	output = 'throwing:arrow_diamond 16',
	recipe = {
		{'default:stick', 'default:stick', 'default:diamond'},
	}
})

--nyanarrow

minetest.register_craftitem("throwing:arrow_nyan", {
	description = "Nyan Arrow (8dmg)",
	inventory_image = "throwing_arrow_nyan.png",
})

minetest.register_node("throwing:arrow_nyan_box", {
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
	tiles = {"throwing_arrow_nyan.png", "throwing_arrow_nyan.png", "throwing_arrow_nyan_back.png", "throwing_arrow_nyan_front.png", "throwing_arrow_nyan_2.png", "throwing_arrow_nyan.png"},
	groups = {not_in_creative_inventory=1},
})

local THROWING_ARROW_NYAN_ENTITY={
	physical = false,
	timer=0,
	visual = "wielditem",
	visual_size = {x=0.1, y=0.1},
	textures = {"throwing:arrow_nyan_box"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

THROWING_ARROW_NYAN_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:get_pos()
	local node = minetest.env:get_node(pos)

	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "throwing:arrow_nyan_entity" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 8
					obj:punch(self.object, 1.0, {
						full_punch_interval=1.0,
						damage_groups={fleshy=damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 8
				obj:punch(self.object, 1.0, {
					full_punch_interval=1.0,
					damage_groups={fleshy=damage},
				}, nil)
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'throwing:arrow_nyan')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("throwing:arrow_nyan_entity", THROWING_ARROW_NYAN_ENTITY)

minetest.register_craft({
	output = 'throwing:arrow_nyan 16',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:nyancat_rainbow'},
	}
})