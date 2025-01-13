local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {
		GitSignsAdd = { fg = c.green, bg = 'NONE' },
		GitSignsAddNr = { fg = c.green, bg = 'NONE' },
		GitSignsAddLn = { fg = 'NONE', bg = c.green },
		GitSignsAddCul = { fg = 'NONE', bg = c.green },
		GitSignsChange = { fg = c.yellow, bg = 'NONE' },
		GitSignsChangeNr = { fg = c.yellow, bg = 'NONE' },
		GitSignsChangeLn = { fg = 'NONE', bg = c.yellow },
		GitSignsChangeCul = { fg = 'NONE', bg = c.yellow },
		GitSignsDelete = { fg = c.red, bg = 'NONE' },
		GitSignsDeleteNr = { fg = c.red, bg = 'NONE' },
		GitSignsDeleteLn = { fg = 'NONE', bg = c.red },
		GitSignsDeleteCul = { fg = 'NONE', bg = c.red },
	}
end

return M
