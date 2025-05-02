local C = require("onehalf.colors.onehalfdark")

local onehalfdark = {}

onehalfdark.normal = {
	a = { bg = C.blue, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.blue },
	c = { bg = C.non_text, fg = C.fg },
}

onehalfdark.insert = {
	a = { bg = C.green, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.green },
	c = { bg = C.non_text, fg = C.fg },
}

onehalfdark.visual = {
	a = { bg = C.blue, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.blue },
	c = { bg = C.non_text, fg = C.fg },
}

onehalfdark.replace = {
	a = { bg = C.yellow, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.yellow },
	c = { bg = C.non_text, fg = C.fg },
}

onehalfdark.command = {
	a = { bg = C.red, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.red },
	c = { bg = C.non_text, fg = C.fg },
}

onehalfdark.terminal = {
	a = { bg = C.red, fg = C.bg, gui = "bold" },
	b = { bg = C.non_text, fg = C.red },
	c = { bg = C.non_text, fg = C.fg },
}

onehalfdark.inactive = {
	a = { bg = C.bg, fg = C.blue },
	b = { bg = C.non_text, fg = C.black, gui = "bold" },
	c = { bg = C.bg, fg = C.black },
}

return onehalfdark
