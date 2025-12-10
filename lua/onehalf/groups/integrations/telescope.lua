local M = {}

--- Get highlight groups for telescope.nvim integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
	return {
		-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
		TelescopeSelectionCaret = { fg = C.purple },
		TelescopeSelection = { fg = C.purple, bg = C.bg1, bold = true },
		TelescopeMatching = { fg = C.blue },

		diffOldFile = { fg = C.blue },
		diffNewFile = { fg = C.blue },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.comment_fg },
		diffIndexLine = { fg = C.comment_fg },
	}
end

return M
