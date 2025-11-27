---@module 'onehalf.theme'
--- Core theme engine that applies highlight groups to Neovim

local hl = vim.api.nvim_set_hl
local theme = {}

--- Set all highlight groups for the OneHalf colorscheme
---@param options OneHalfOptions Configuration options for styling and integrations
theme.set_highlights = function(options)
	-- Get the Palette once (with potential dimming applied)
	local palette = require("onehalf.util").get_colors(options)

	-- Core editor highlights
	local core_modules = {
		"editor",
		"syntax",
	}

	--- Apply a table of highlight definitions to Neovim
	---@param highlights table<string, table> Mapping of highlight group names to their attributes
	local apply_highlights = function(highlights)
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

	-- Load core modules (always enabled)
	for _, module in ipairs(core_modules) do
		local highlights = require("onehalf.groups." .. module).get(palette, options)
		apply_highlights(highlights)
	end

	-- Load terminal colors specially if enabled
	if options.terminal_colors then
		local terminal = require("onehalf.groups.terminal").get(palette, options)
		for key, color in pairs(terminal) do
			vim.g[key] = color
		end
	end

	-- Load integration modules
	for integration, enabled in pairs(options.integrations) do
		-- Only load the integration if it's enabled
		if enabled then
			-- Using pcall to handle potential errors if a module doesn't exist
			local ok, highlights = pcall(require, "onehalf.groups.integrations." .. integration)
			if ok and highlights then apply_highlights(highlights.get(palette, options)) end
		end
	end
end

return theme
