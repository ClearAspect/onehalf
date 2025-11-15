local M = {}

--- Get highlight groups for blink.cmp integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
	return {

		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpMenuBorder = { link = "Pmenu" },
		BlinkCmpMenuSelection = { link = "PmenuSel" },

		BlinkCmpScrollBarThumb = { link = "PmenuThumb" },
		BlinkCmpScrollBarGutter = { link = "PmenuSbar" },

		BlinkCmpLabel = { fg = C.fg },
		BlinkCmpLabelDeprecated = { link = "NonText" },
		BlinkCmpLabelMatch = { fg = C.fg },
		BlinkCmpLabelDetail = { fg = C.fg },
		BlinkCmpLabelDescription = { fg = C.fg },

		BlinkCmpKind = { link = "Pmenu" },

		BlinkCmpKindText = { link = "CmpItemKindText" },
		BlinkCmpKindMethod = { link = "CmpItemKindMethod" },
		BlinkCmpKindFunction = { link = "CmpItemKindFunction" },
		BlinkCmpKindConstructor = { link = "CmpItemKindConstructor" },
		BlinkCmpKindField = { link = "CmpItemKindField" },
		BlinkCmpKindVariable = { link = "CmpItemKindVariable" },
		BlinkCmpKindClass = { link = "CmpItemKindClass" },
		BlinkCmpKindInterface = { link = "CmpItemKindInterface" },
		BlinkCmpKindModule = { link = "CmpItemKindModule" },
		BlinkCmpKindProperty = { link = "CmpItemKindProperty" },
		BlinkCmpKindUnit = { link = "CmpItemKindUnit" },
		BlinkCmpKindValue = { link = "CmpItemKindValue" },
		BlinkCmpKindEnum = { link = "CmpItemKindEnum" },
		BlinkCmpKindKeyword = { link = "CmpItemKindKeyword" },
		BlinkCmpKindSnippet = { link = "CmpItemKindSnippet" },
		BlinkCmpKindColor = { link = "CmpItemKindColor" },
		BlinkCmpKindFile = { link = "CmpItemKindFile" },
		BlinkCmpKindReference = { link = "CmpItemKindReference" },
		BlinkCmpKindFolder = { link = "CmpItemKindFolder" },
		BlinkCmpKindEnumMember = { link = "CmpItemKindEnumMember" },
		BlinkCmpKindConstant = { link = "CmpItemKindConstant" },
		BlinkCmpKindStruct = { link = "CmpItemKindStruct" },
		BlinkCmpKindEvent = { link = "CmpItemKindEvent" },
		BlinkCmpKindOperator = { link = "CmpItemKindOperator" },
		BlinkCmpKindTypeParameter = { link = "CmpItemKindTypeParameter" },
		BlinkCmpKindCopilot = { link = "CmpItemKindCopilot" },
	}
end

return M
