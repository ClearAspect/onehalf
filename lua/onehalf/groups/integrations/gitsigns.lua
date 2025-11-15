local M = {}

--- Get highlight groups for gitsigns.nvim integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
	local U = require("onehalf.util")

	return {
		GitSignsAdd = { fg = C.green },
		GitSignsAddNr = { fg = C.green },
		GitSignsAddLn = { bg = U.blend_colors(C.green, C.bg, 0.25) },
		GitSignsAddCul = { bg = C.green },
		GitSignsChange = { fg = C.yellow },
		GitSignsChangeNr = { fg = C.yellow },
		GitSignsChangeLn = { bg = U.blend_colors(C.yellow, C.bg, 0.25) },
		GitSignsChangeCul = { bg = C.yellow },
		GitSignsDelete = { fg = C.red },
		GitSignsDeleteNr = { fg = C.red },
		GitSignsDeleteLn = { bg = U.blend_colors(C.red, C.bg, 0.25) },
		GitSignsDeleteCul = { bg = C.red },

		GitSignsStagedAdd = { fg = C.green },
		GitSignsStagedAddNr = { fg = C.green },
		GitSignsStagedAddLn = { bg = U.blend_colors(C.green, C.bg, 0.25) },
		GitSignsStagedAddCul = { bg = C.green },
		GitSignsStagedChange = { fg = C.yellow },
		GitSignsStagedChangeNr = { fg = C.yellow },
		GitSignsStagedChangeLn = { bg = U.blend_colors(C.yellow, C.bg, 0.25) },
		GitSignsStagedChangeCul = { bg = C.yellow },
		GitSignsStagedDelete = { fg = C.red },
		GitSignsStagedDeleteNr = { fg = C.red },
		GitSignsStagedDeleteLn = { bg = U.blend_colors(C.red, C.bg, 0.25) },
		GitSignsStagedDeleteCul = { bg = C.red },
	}
end

return M
