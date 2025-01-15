local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {
		GitSignsAdd = { fg = c.green, },
		GitSignsAddNr = { fg = c.green, },
		GitSignsAddLn = { bg = c.green },
		GitSignsAddCul = { bg = c.green },
		GitSignsChange = { fg = c.yellow, },
		GitSignsChangeNr = { fg = c.yellow, },
		GitSignsChangeLn = { bg = c.yellow },
		GitSignsChangeCul = { bg = c.yellow },
		GitSignsDelete = { fg = c.red, },
		GitSignsDeleteNr = { fg = c.red, },
		GitSignsDeleteLn = { bg = c.red },
		GitSignsDeleteCul = { bg = c.red },
	}
end

return M
