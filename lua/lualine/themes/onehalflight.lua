local C = require('onehalf.colors.onehalflight')

local onehalflight = {}

onehalflight.normal = {
	a = { bg = C.blue, fg = C.bg, gui = "bold" },
	b = { bg = C.black, fg = C.blue },
	c = { bg = C.bg, fg = C.fg },
}

onehalflight.insert = {
	a = { bg = C.green, fg = C.bg, gui = "bold" },
	b = { bg = C.black, fg = C.green },
}

onehalflight.visual = {
	a = { bg = C.blue, fg = C.bg, gui = "bold" },
	b = { bg = C.black, fg = C.blue },
}

onehalflight.replace = {
	a = { bg = C.yellow, fg = C.bg, gui = "bold" },
	b = { bg = C.black, fg = C.yellow },
}

onehalflight.command = {
	a = { bg = C.red, fg = C.bg, gui = "bold" },
	b = { bg = C.black, fg = C.red },
}

onehalflight.terminal = {
	a = { bg = C.red, fg = C.bg, gui = "bold" },
	b = { bg = C.black, fg = C.red },
}


onehalflight.inactive = {
	a = { bg = C.bg, fg = C.blue },
	b = { bg = C.bg, fg = C.black, gui = "bold" },
	c = { bg = C.bg, fg = C.black },
}

return onehalflight
