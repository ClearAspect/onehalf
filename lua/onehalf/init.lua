---@module 'onehalf'
--- OneHalf colorscheme for Neovim with plugin integrations

local theme = require("onehalf.theme")

---@class OneHalfOptions
---@field transparency? boolean Enable transparency by disabling background colors
---@field terminal_colors? boolean Apply theme colors to Neovim terminal windows
---@field styles? OneHalfStyles Style configurations for syntax groups
---@field integrations? OneHalfIntegrations Plugin integration settings

---@class OneHalfStyles
---@field comments? table Style attributes for comments
---@field conditionals? table Style attributes for conditionals
---@field loops? table Style attributes for loops
---@field functions? table Style attributes for functions
---@field keywords? table Style attributes for keywords
---@field strings? table Style attributes for strings
---@field variables? table Style attributes for variables
---@field numbers? table Style attributes for numbers
---@field booleans? table Style attributes for booleans
---@field properties? table Style attributes for properties
---@field types? table Style attributes for types
---@field operators? table Style attributes for operators

---@class OneHalfIntegrations
---@field cmp? boolean nvim-cmp completion menu integration
---@field dropbar? boolean dropbar.nvim integration
---@field blink_cmp? boolean blink.cmp completion integration
---@field diffview? boolean diffview.nvim integration
---@field fzf? boolean fzf-lua integration
---@field gitsigns? boolean gitsigns.nvim integration
---@field semantic_tokens? boolean LSP semantic token integration
---@field telescope? boolean telescope.nvim integration
---@field treesitter_context? boolean treesitter-context integration
---@field treesitter? boolean nvim-treesitter integration
---@field whichkey? boolean which-key.nvim integration

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
			dropbar = true,
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

--- Load and apply the OneHalf colorscheme
---@param style? "dark"|"light" Theme variant to load (defaults to "dark")
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

--- Configure the OneHalf colorscheme with user options
---@param user_options? OneHalfOptions User configuration to merge with defaults
M.setup = function(user_options)
	-- Merge the users options with the default options
	M.options = vim.tbl_extend("force", M.default_options, user_options or {})
end

return M
