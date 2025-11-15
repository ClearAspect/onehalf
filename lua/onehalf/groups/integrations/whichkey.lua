local M = {}

--- Get highlight groups for which-key.nvim integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
	return {

		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = C.yellow },
		WhichKeySeparator = { fg = C.green },
		WhichKeyDesc = { fg = C.blue },
		WhichKeyValue = { fg = C.green },

		WhichKeyIcon = { fg = C.fg },
		WhichKeyNormal = { fg = C.red },
		WhichKeyTitle = { fg = C.blue },
	}
end

return M
