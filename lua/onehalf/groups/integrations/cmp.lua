local M = {}

function M.get(C, O)
	return {


		CmpGhostText = { fg = C.comment_fg, bg = 'NONE' },

		CmpItemAbbr = { fg = C.fg },
		CmpItemAbbrDeprecated = { fg = C.comment_fg, strikethrough = true},
		CmpItemKind = { fg = C.fg },
		CmpItemMenu = { fg = C.fg },
		CmpItemAbbrMatch = { fg = C.fg, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = C.fg, bold = true },

		-- kind support
		CmpItemKindSnippet = { fg = C.purple },
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
