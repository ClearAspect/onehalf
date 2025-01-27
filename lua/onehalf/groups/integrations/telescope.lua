local M = {}

function M.get()
	local C = require("onehalf.util").get_colors()

	return {
		-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeSelectionCaret = { fg = C.purple },
		TelescopeSelection = { fg = C.purple, bg = C.bg, bold = true, },
		TelescopeMatching = { fg = C.blue },
	}
end

return M
