local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {

		terminal_color_0 = c.black,
		terminal_color_8 = c.black,

		terminal_color_1 = c.red,
		terminal_color_9 = c.red,

		terminal_color_2 = c.green,
		terminal_color_10 = c.green,

		terminal_color_3 = c.yellow,
		terminal_color_11 = c.yellow,

		terminal_color_4 = c.blue,
		terminal_color_12 = c.blue,

		terminal_color_5 = c.purple,
		terminal_color_13 = c.purple,

		terminal_color_6 = c.cyan,
		terminal_color_14 = c.cyan,

		terminal_color_7 = c.white,
		terminal_color_15 = c.white,

		terminal_color_background = c.bg,
		terminal_color_foreground = c.fg,

	}
end

return M
