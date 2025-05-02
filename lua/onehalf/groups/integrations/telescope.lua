local M = {}

function M.get(C, O)
	return {
		-- TelescopeNormal = { link = "NormalFloat" }, -- Respect telescope's default float bg
		TelescopeSelectionCaret = { fg = C.purple },
		TelescopeSelection = { fg = C.purple, bg = C.bg, bold = true },
		TelescopeMatching = { fg = C.blue },

		diffOldFile = { fg = C.blue },
		diffNewFile = { fg = C.blue },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.comment_fg },
		diffIndexLine = { fg = C.comment_fg },
	}
end

return M
