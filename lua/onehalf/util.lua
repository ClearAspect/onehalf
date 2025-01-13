---@diagnostic disable: unused-local, unused-function

local M = {}

function M.get_colors()
	local background = vim.o.background or 'dark'
	if background == 'light' then
		return require('onehalf.colors.onehalflight')
	else
		return require('onehalf.colors.onehalfdark')
	end
end

return M
