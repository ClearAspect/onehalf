local M = {}

--- Get terminal color definitions for Neovim terminal
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, string> terminal_colors Mapping of terminal color variables to hex values
function M.get(C, O)
	return {

		terminal_color_0 = C.black,
		terminal_color_8 = C.black,

		terminal_color_1 = C.red,
		terminal_color_9 = C.red,

		terminal_color_2 = C.green,
		terminal_color_10 = C.green,

		terminal_color_3 = C.yellow,
		terminal_color_11 = C.yellow,

		terminal_color_4 = C.blue,
		terminal_color_12 = C.blue,

		terminal_color_5 = C.purple,
		terminal_color_13 = C.purple,

		terminal_color_6 = C.cyan,
		terminal_color_14 = C.cyan,

		terminal_color_7 = C.white,
		terminal_color_15 = C.white,

		terminal_color_background = C.bg,
		terminal_color_foreground = C.fg,
	}
end

return M
