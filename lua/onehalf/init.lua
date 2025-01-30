local theme = require('onehalf.theme')
local M = {
	default_options = {
		styles = {
			comments = { "italic" }
		}
		-- transparent = false,
		-- terminal_colors = true,
		-- styles = {
		-- 	comments = "italic",
		-- 	keywords = "bold",
		-- 	functions = "NONE",
		-- 	variables = "NONE",
		-- },
		-- integrations = {
		-- 	treesitter = true,
		-- 	native_lsp = true,
		-- 	cmp = true,
		-- 	gitsigns = true,
		-- 	telescope = true,
		-- 	whichkey = true,
		-- 	diffview = true,
		-- 	fzf = true,
		-- },
	},
}

M.options = M.default_options

M.load = function(style)
	-- default to dark if none is specified
	style = style or 'dark'

	-- Validate parameter
	if style ~= 'dark' and style ~= 'light' then
		style = 'dark'
	end

	-- Reset background and colorscheme
	if vim.fn.exists('syntax_on') then
		vim.cmd('syntax reset')
	end

	-- Set the background and termguicolors
	vim.o.termguicolors = true
	vim.o.background = style

	-- Clear all highlights before setting new ones
	vim.cmd('highlight clear')

	-- Set the colorscheme name properly
	vim.g.colors_name = 'onehalf' .. style

	theme.set_highlights(M.options)
end

M.setup = function(user_options)
	M.options = vim.tbl_extend('force', M.default_options, user_options or {})
end


return M
