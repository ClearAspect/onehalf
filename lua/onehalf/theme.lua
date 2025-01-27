local hl = vim.api.nvim_set_hl
local theme = {}


local integration_modules


theme.set_highlights = function()
	-- Core editor highlights
	local core_modules = {
		"editor",
		"syntax",
	}

	-- Integration highlights
	integration_modules = {
		"treesitter",
		"semantic_tokens",
		"cmp",
		"diffview",
		"gitsigns",
		"whichkey",
		"telescope",
		"fzf",
	}

	-- Load core modules
	for _, module in ipairs(core_modules) do
		local highlights = require("onehalf.groups." .. module).get()
		for group, colors in pairs(highlights) do
			hl(0, group, colors)
		end
	end

	-- Load terminal colors specially
	local terminal = require("onehalf.groups.terminal").get()
	for key, color in pairs(terminal) do
		vim.g[key] = color
	end

	-- Load integration modules
	for _, module in ipairs(integration_modules) do
		local highlights = require("onehalf.groups.integrations." .. module).get()
		for group, colors in pairs(highlights) do
			hl(0, group, colors)
		end
	end
end

return theme
