local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {

		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = c.yellow },
		WhichKeySeparator = { fg = c.green },
		WhichKeyDesc = { fg = c.blue },
		WhichKeyValue = { fg = c.green },

		WhichKeyIcon = { fg = c.fg },
		WhichKeyNormal = { fg = c.red },
		WhichKeyTitle = { fg = c.blue },

	}
end

return M
