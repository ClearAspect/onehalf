local M = {}

function M.get(C, O)
	return {
		GitSignsAdd = { fg = C.green, },
		GitSignsAddNr = { fg = C.green, },
		GitSignsAddLn = { bg = C.green },
		GitSignsAddCul = { bg = C.green },
		GitSignsChange = { fg = C.yellow, },
		GitSignsChangeNr = { fg = C.yellow, },
		GitSignsChangeLn = { bg = C.yellow },
		GitSignsChangeCul = { bg = C.yellow },
		GitSignsDelete = { fg = C.red, },
		GitSignsDeleteNr = { fg = C.red, },
		GitSignsDeleteLn = { bg = C.red },
		GitSignsDeleteCul = { bg = C.red },
	}
end

return M
