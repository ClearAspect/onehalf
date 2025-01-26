local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()
	-- Get fresh colors every time we set highlights
	local c = require("onehalf.util").get_colors()

	-- Editor
	local editor = require("onehalf.groups.editor").get()
	for group, colors in pairs(editor) do
		hl(0, group, colors)
	end

	-- Syntax
	local syntax = require("onehalf.groups.syntax").get()
	for group, colors in pairs(syntax) do
		hl(0, group, colors)
	end

	-- Terminal
	local terminal = require("onehalf.groups.terminal").get()
	for key, color in pairs(terminal) do
		vim.g[key] = color
	end

	-- Treesitter
	local treesitter = require("onehalf.groups.integrations.treesitter").get()
	for group, colors in pairs(treesitter) do
		hl(0, group, colors)
	end

	-- Semantic Tokens (LSP)
	local semantic_tokens = require("onehalf.groups.integrations.semantic_tokens").get()
	for group, colors in pairs(semantic_tokens) do
		hl(0, group, colors)
	end



	-- Cmp
	local cmp = require("onehalf.groups.integrations.cmp").get()
	for group, colors in pairs(cmp) do
		hl(0, group, colors)
	end

	-- Diffview
	local diffview = require("onehalf.groups.integrations.diffview").get()
	for group, colors in pairs(diffview) do
		hl(0, group, colors)
	end

	-- Whichkey
	hl(0, "WhichKey", { fg = c.red, bg = c.bg })
	hl(0, "WhichKeyBorder", { fg = c.fg, bg = c.bg })
	hl(0, "WhichKeyDesc", { fg = c.blue, bg = 'NONE' })
	hl(0, "WhichKeyGroup", { fg = c.yellow, bg = 'NONE' })
	hl(0, "WhichKeyIcon", { fg = c.fg, bg = 'NONE' })
	hl(0, "WhichKeyNormal", { fg = c.red, bg = c.bg })
	hl(0, "WhichKeySeparator", { fg = c.green, bg = 'NONE' })
	hl(0, "WhichKeyTitle", { fg = c.blue, bg = 'NONE' })
	hl(0, "WhichKeyValue", { fg = c.green, bg = 'NONE' })

	-- Git
	local gitsigns = require("onehalf.groups.integrations.gitsigns").get()
	for group, colors in pairs(gitsigns) do
		hl(0, group, colors)
	end

	-- Telescope
	hl(0, "TelescopeSelection", { fg = c.blue, bg = 'NONE' })
	hl(0, "TelescopeMatching", { fg = c.yellow, bg = 'NONE', bold = true, })
	hl(0, "TelescopeBorder", { fg = c.blue, bg = c.bg })

	-- StatusLine
	hl(0, "StatusLineSeparator", { fg = c.black, bg = 'NONE' })
	hl(0, "StatusLineTerm", { fg = c.black, bg = 'NONE' })
	hl(0, "StatusLineTermNC", { fg = c.black, bg = 'NONE' })

	-- Cmp
	hl(0, "CmpGhostText", { fg = c.comment_fg, bg = 'NONE' })
	hl(0, "CmpItemAbbr", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemAbbrDeprecated", { fg = c.comment_fg, bg = 'NONE', strikethrough = true, })
	hl(0, "CmpItemKind", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemMenu", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemAbbrMatch", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.fg, bg = 'NONE' })

	hl(0, "CmpItemKindSnippet", { fg = c.purple, bg = 'NONE' })
	hl(0, "CmpItemKindCopilot", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindFolder", { fg = c.blue, bg = 'NONE' })
	hl(0, "CmpItemKindKeyword", { link = 'Keyword' })
	hl(0, "CmpItemKindClass", { link = 'Structure' })
	hl(0, "CmpItemKindInterface", { link = 'Structure' })
	hl(0, "CmpItemKindStruct", { link = 'Structure' })
	hl(0, "CmpItemKindEnum", { link = 'Structure' })
	hl(0, "CmpItemKindConstructor", { link = 'Special' })
	hl(0, "CmpItemKindFunction", { link = 'Function' })
	hl(0, "CmpItemKindMethod", { link = 'Function' })
	hl(0, "CmpItemKindVariable", { link = 'Variable' })
	hl(0, "CmpItemKindField", { link = 'Variable' })
	hl(0, "CmpItemKindProperty", { link = 'Variable' })
	hl(0, "CmpItemKindText", { link = 'Variable' })
	hl(0, "CmpItemKindEnumMember", { link = 'Constant' })
	hl(0, "CmpItemKindConstant", { link = 'Constant' })
	hl(0, "CmpItemKindEvent", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindModule", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindValue", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindUnit", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindFile", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindColor", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindReference", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindOperator", { fg = c.fg, bg = 'NONE' })
	hl(0, "CmpItemKindTypeParameter", { fg = c.fg, bg = 'NONE' })
end

return theme
