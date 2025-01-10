local M = {}
local theme = require('onehalf.theme')

M.setup = function(style)
	-- default to dark if none is specified
	style = style or 'dark'


	-- Validate parameter
	if style ~= 'dark' and style ~= 'light' then
		style = 'dark'
	end



	if vim.fn.exists('syntax_on') then
		vim.cmd('syntax reset')
	end

	vim.o.termguicolors = true
	vim.o.background = style

	-- Clear all highlights before setting new ones
	vim.cmd('highlight clear')

	-- Set the colorscheme name properly
	vim.g.colors_name = 'onehalf' .. style

	theme.set_highlights()
end

return M
