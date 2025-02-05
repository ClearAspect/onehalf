local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function(options)
	-- Get the Palette once
	local palette = require("onehalf.util").get_colors()

	-- Core editor highlights
	local core_modules = {
		"editor",
		"syntax",
	}

	-- Integration highlights
	local integration_modules = {
		"cmp",
		"diffview",
		"fzf",
		"gitsigns",
		"semantic_tokens",
		"telescope",
		"treesitter",
		"whichkey",
	}

	-- Load core modules
	for _, module in ipairs(core_modules) do
		local highlights = require("onehalf.groups." .. module).get(palette, options)
		for group, colors in pairs(highlights) do
			if colors.styles then
				-- Copy all style properties from the styles table
				for k, v in pairs(colors.styles) do
					colors[k] = v
				end
				-- Remove the styles table as it's not a valid highlight attribute
				colors.styles = nil
			end
			hl(0, group, colors)
		end
	end

	-- Load terminal colors specially if enabled
	if options.terminal_colors then
		local terminal = require("onehalf.groups.terminal").get(palette, options)
		for key, color in pairs(terminal) do
			vim.g[key] = color
		end
	end

	-- Load integration modules
	for _, module in ipairs(integration_modules) do
		local highlights = require("onehalf.groups.integrations." .. module).get(palette, options)
		for group, colors in pairs(highlights) do
			if colors.styles then
				-- Copy all style properties from the styles table
				for k, v in pairs(colors.styles) do
					colors[k] = v
				end
				-- Remove the styles table as it's not a valid highlight attribute
				colors.styles = nil
			end
			hl(0, group, colors)
		end
	end
end

return theme
