local M = {}

--- Get highlight groups for nvim-cmp integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
	return {
		CmpGhostText = { fg = C.comment_fg, bg = "NONE" },

		CmpItemAbbr = { fg = C.fg },
		CmpItemAbbrDeprecated = { fg = C.comment_fg, strikethrough = true },
		CmpItemKind = { fg = C.fg },
		CmpItemMenu = { link = "Pmenu" },
		CmpItemAbbrMatch = { fg = C.fg },
		CmpItemAbbrMatchFuzzy = { fg = C.fg },

		-- kind support
		CmpItemKindSnippet = { fg = C.purple },
		CmpItemKindKeyword = { link = "Keyword" },
		CmpItemKindText = { link = "String" },
		CmpItemKindMethod = { link = "Function" },
		CmpItemKindConstructor = { link = "Special" },
		CmpItemKindFunction = { link = "Function" },
		CmpItemKindFolder = { link = "Directory" },
		CmpItemKindModule = { link = "Include" },
		CmpItemKindConstant = { link = "Constant" },
		CmpItemKindField = { link = "Identifier" },
		CmpItemKindProperty = { link = "Identifier" },
		CmpItemKindEnum = { link = "Type" },
		CmpItemKindUnit = { link = "Number" },
		CmpItemKindClass = { link = "Type" },
		CmpItemKindVariable = { link = "Identifier" },
		CmpItemKindFile = { link = "Directory" },
		CmpItemKindInterface = { link = "Type" },
		CmpItemKindColor = { link = "Special" },
		CmpItemKindReference = { link = "Identifier" },
		CmpItemKindEnumMember = { link = "Constant" },
		CmpItemKindStruct = { link = "Type" },
		CmpItemKindValue = { link = "Number" },
		CmpItemKindEvent = { link = "Special" },
		CmpItemKindOperator = { link = "Operator" },
		CmpItemKindTypeParameter = { link = "Type" },
		CmpItemKindCopilot = { link = "Special" },
	}
end

return M
