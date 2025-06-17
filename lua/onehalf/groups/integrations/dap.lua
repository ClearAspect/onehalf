local M = {}

function M.get(C, O)
	return {
		DapBreakpoint = { fg = C.red, bold = true },
	}
end

return M
