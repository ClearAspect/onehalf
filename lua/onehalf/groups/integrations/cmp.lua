local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {


		CmpGhostText = { fg = c.comment_fg, bg = 'NONE' },

		CmpItemAbbr = { fg = c.fg },
		CmpItemAbbrDeprecated = { fg = c.comment_fg, strikethrough = true },
		CmpItemKind = { fg = c.fg },
		CmpItemMenu = { fg = c.fg },
		CmpItemAbbrMatch = { fg = c.fg, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.fg, bold = true },

		-- kind support
		CmpItemKindSnippet = { fg = c.purple },
		CmpItemKindKeyword = { link = 'Keyword' },
		CmpItemKindText = { link = 'String' },
		CmpItemKindMethod = { link = 'Function' },
		CmpItemKindConstructor = { link = 'Special' },
		CmpItemKindFunction = { link = 'Function' },
		CmpItemKindFolder = { link = 'Directory' },
		CmpItemKindModule = { link = 'Include' },
		CmpItemKindConstant = { link = 'Constant' },
		CmpItemKindField = { link = 'Identifier' },
		CmpItemKindProperty = { link = 'Identifier' },
		CmpItemKindEnum = { link = 'Type' },
		CmpItemKindUnit = { link = 'Number' },
		CmpItemKindClass = { link = 'Type' },
		CmpItemKindVariable = { link = 'Identifier' },
		CmpItemKindFile = { link = 'Directory' },
		CmpItemKindInterface = { link = 'Type' },
		CmpItemKindColor = { link = 'Special' },
		CmpItemKindReference = { link = 'Identifier' },
		CmpItemKindEnumMember = { link = 'Constant' },
		CmpItemKindStruct = { link = 'Type' },
		CmpItemKindValue = { link = 'Number' },
		CmpItemKindEvent = { link = 'Special' },
		CmpItemKindOperator = { link = 'Operator' },
		CmpItemKindTypeParameter = { link = 'Type' },
		CmpItemKindCopilot = { link = 'Special' },


	}
end

return M
