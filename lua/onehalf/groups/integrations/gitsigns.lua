local M = {}

function M.get(C, O)
	local U = require("onehalf.util")

	return {
		GitSignsAdd = { fg = C.green, },
		GitSignsAddNr = { fg = C.green, },
		GitSignsAddLn = { bg = U.blend_colors(C.green, C.bg, 0.25) },
		GitSignsAddCul = { bg = C.green },
		GitSignsChange = { fg = C.yellow, },
		GitSignsChangeNr = { fg = C.yellow, },
		GitSignsChangeLn = { bg = U.blend_colors(C.yellow, C.bg, 0.25) },
		GitSignsChangeCul = { bg = C.yellow },
		GitSignsDelete = { fg = C.red, },
		GitSignsDeleteNr = { fg = C.red, },
		GitSignsDeleteLn = { bg = U.blend_colors(C.red, C.bg, 0.25) },
		GitSignsDeleteCul = { bg = C.red },
	}
end

return M
