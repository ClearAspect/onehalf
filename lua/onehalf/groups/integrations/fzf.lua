local M = {}

function M.get()
	local C = require("onehalf.util").get_colors()

	return {
		-- FzfLuaNormal = { link = "NormalFloat" }, Respect fzf-lua's default float bg
		FzfLuaBorder = { link = "FloatBorder" },
		FzfLuaTitle = { link = "FloatBorder" },
		FzfLuaHeaderBind = { fg = C.yellow },
		FzfLuaHeaderText = { fg = C.purple },
		FzfLuaDirPart = { link = "NonText" },
		FzfLuaFzfMatch = { fg = C.blue },
		FzfLuaFzfPrompt = { fg = C.blue },
		FzfLuaPathColNr = { fg = C.blue },
		FzfLuaPathLineNr = { fg = C.green },
		FzfLuaBufName = { fg = C.purple },
		FzfLuaBufNr = { fg = C.yellow },
		FzfLuaBufFlagCur = { fg = C.purple },
		FzfLuaBufFlagAlt = { fg = C.blue },
		FzfLuaTabTitle = { fg = C.sky },
		FzfLuaTabMarker = { fg = C.yellow },
		FzfLuaLiveSym = { fg = C.purple },
	}
end

return M
