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

	-- Git
	local gitsigns = require("onehalf.groups.integrations.gitsigns").get()
	for group, colors in pairs(gitsigns) do
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

	-- Telescope
	hl(0, "TelescopeSelection", { fg = c.blue, bg = 'NONE' })
	hl(0, "TelescopeMatching", { fg = c.yellow, bg = 'NONE', bold = true, })
	hl(0, "TelescopeBorder", { fg = c.blue, bg = c.bg })

	-- StatusLine
	hl(0, "StatusLineSeparator", { fg = c.black, bg = 'NONE' })
	hl(0, "StatusLineTerm", { fg = c.black, bg = 'NONE' })
	hl(0, "StatusLineTermNC", { fg = c.black, bg = 'NONE' })
end

return theme
