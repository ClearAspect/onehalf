local M = {}

--- Get highlight groups for nvim-dap integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
	return {
		DapBreakpoint = { fg = C.red, bold = true },
	}
end

return M
