local M = {}

function M.get()
	local C = require("onehalf.util").get_colors()

	return {

		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = C.yellow },
		WhichKeySeparator = { fg = C.green },
		WhichKeyDesc = { fg = C.blue },
		WhichKeyValue = { fg = C.green },

		WhichKeyIcon = { fg = C.fg },
		WhichKeyNormal = { fg = C.red },
		WhichKeyTitle = { fg = C.blue },

	}
end

return M
