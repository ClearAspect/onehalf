local theme = require("onehalf.theme")
local M = {
	default_options = {
		transparency = false,
		terminal_colors = true, -- Apply the theme to neovim terminal windows
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		styles = {
			comments = { italic = true },
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
		integrations = {
			cmp = true,
			blink_cmp = true,
			diffview = true,
			fzf = true,
			gitsigns = true,
			semantic_tokens = true,
			telescope = true,
			treesitter_context = true,
			treesitter = true,
			whichkey = true,
		},
	},
}

M.options = M.default_options

M.load = function(style)
	-- default to dark if none is specified
	style = style or "dark"

	-- Validate parameter
	if style ~= "dark" and style ~= "light" then style = "dark" end

	-- Reset background and colorscheme
	if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end

	-- Set the background and termguicolors
	vim.o.termguicolors = true
	vim.o.background = style

	-- Clear all highlights before setting new ones
	vim.cmd("highlight clear")

	-- Set the colorscheme name properly
	vim.g.colors_name = "onehalf" .. style

	theme.set_highlights(M.options)
end

-- Setup the theme
M.setup = function(user_options)
	-- Merge the users options with the default options
	M.options = vim.tbl_extend("force", M.default_options, user_options or {})
end

return M
