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
	local whichkey = require("onehalf.groups.integrations.whichkey").get()
	for group, colors in pairs(whichkey) do
		hl(0, group, colors)
	end

	-- Telescope
	local telescope = require("onehalf.groups.integrations.telescope").get()
	for group, colors in pairs(telescope) do
		hl(0, group, colors)
	end

	-- fzf
	local fzf = require("onehalf.groups.integrations.fzf").get()
	for group, colors in pairs(fzf) do
		hl(0, group, colors)
	end
end

return theme
