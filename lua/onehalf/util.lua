---@diagnostic disable: unused-local, unused-function
---@module 'onehalf.util'
--- Utility functions for color management and manipulation

local M = {}

--- Get the color palette based on the current background setting
---@return ColorPalette colors The appropriate color palette for dark or light mode
function M.get_colors()
	local background = vim.o.background or "dark"
	if background == "light" then
		return require("onehalf.colors.onehalflight")
	else
		return require("onehalf.colors.onehalfdark")
	end
end

--- Converts a hex color string to RGB components
---@param hex string Hex color string (with or without #)
---@return number r Red component (0-255)
---@return number g Green component (0-255)
---@return number b Blue component (0-255)
local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

--- Converts RGB components to hex color string
---@param r number Red component (0-255)
---@param g number Green component (0-255)
---@param b number Blue component (0-255)
---@return string hex Formatted hex color string
local function rgb_to_hex(r, g, b) return string.format("#%02x%02x%02x", r, g, b) end

--- Blend two hex colors with alpha transparency
---@param color1 string Top color in hex format (foreground/highlight)
---@param color2 string Bottom color in hex format (background)
---@param alpha number Opacity level (0.0 = fully transparent, 1.0 = fully opaque)
---@return string blended_color The resulting blended hex color
function M.blend_colors(color1, color2, alpha)
	-- color1 is the top color (highlight color)
	-- color2 is the bottom color (background)
	-- alpha is between 0 and 1 (0 = fully transparent, 1 = fully opaque)
	local r1, g1, b1 = hex_to_rgb(color1)
	local r2, g2, b2 = hex_to_rgb(color2)

	local r = math.floor(r1 * alpha + r2 * (1 - alpha))
	local g = math.floor(g1 * alpha + g2 * (1 - alpha))
	local b = math.floor(b1 * alpha + b2 * (1 - alpha))

	return rgb_to_hex(r, g, b)
end

return M
