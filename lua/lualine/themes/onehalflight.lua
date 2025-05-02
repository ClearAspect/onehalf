local C = require("onehalf.colors.onehalflight")

local onehalflight = {}

onehalflight.normal = {
	a = { bg = C.blue, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.blue },
	c = { bg = C.non_text, fg = C.fg },
}

onehalflight.insert = {
	a = { bg = C.green, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.green },
	c = { bg = C.non_text, fg = C.fg },
}

onehalflight.visual = {
	a = { bg = C.blue, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.blue },
	c = { bg = C.non_text, fg = C.fg },
}

onehalflight.replace = {
	a = { bg = C.yellow, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.yellow },
	c = { bg = C.non_text, fg = C.fg },
}

onehalflight.command = {
	a = { bg = C.red, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.red },
	c = { bg = C.non_text, fg = C.fg },
}

onehalflight.terminal = {
	a = { bg = C.red, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.red },
	c = { bg = C.non_text, fg = C.fg },
}

onehalflight.inactive = {
	a = { bg = C.bg, fg = C.blue },
	b = { bg = C.non_text, fg = C.black, gui = "bold" },
	c = { bg = C.bg, fg = C.black },
}

return onehalflight
