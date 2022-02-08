Replacement for xpanes and xconnected, using connected nodeboxes.
Writen by Skamiz for Dives Ruris Revival

Provides an API for registering walls, fences and panes.
If default is instaled also register several walls and panes.

Punching a wall or fence with the same item in hand will toggle the middle post.

# API

## register node

xjoined.register_wall(name, def)
xjoined.register_fence(name, def)
xjoined.register_pane(name, def)

'def' is a normal node definition table and while it can be left completely empty
it is recomended to at least add a description, textures, and groups that make
the node diggable.

## register recipe

xjoined.register_wall_recipe(output, input)

	{"", input, ""},
	{input, input, input},
	{input, input, input},

xjoined.register_pane_recipe(output, input)

	{input, input, input},
	{input, input, input},

input is aranged as shown and output must contain output count
