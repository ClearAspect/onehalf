---@diagnostic disable: unused-local, unused-function
---@module 'onehalf.util'
--- Utility functions for color management and manipulation

local M = {}

--- Get the color palette based on the current background setting
---@param options? OneHalfOptions Configuration options for potential dimming
---@return ColorPalette colors The appropriate color palette for dark or light mode
function M.get_colors(options)
	local background = vim.o.background or "dark"
	local base_colors
	if background == "light" then
		base_colors = require("onehalf.colors.onehalflight")
	else
		base_colors = require("onehalf.colors.onehalfdark")
	end

	-- Apply dimming if enabled
	if options and options.dimming and options.dimming.enable then
		return M.dim_palette(base_colors, options.dimming)
	end

	return base_colors
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

--- Converts RGB to HSL color space
---@param r number Red component (0-255)
---@param g number Green component (0-255)
---@param b number Blue component (0-255)
---@return number h Hue (0-360)
---@return number s Saturation (0-1)
---@return number l Lightness (0-1)
local function rgb_to_hsl(r, g, b)
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, l = 0, 0, (max + min) / 2

	if max == min then
		h, s = 0, 0 -- achromatic
	else
		local d = max - min
		s = l > 0.5 and d / (2 - max - min) or d / (max + min)
		if max == r then
			h = (g - b) / d + (g < b and 6 or 0)
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h * 360, s, l
end

--- Converts HSL to RGB color space
---@param h number Hue (0-360)
---@param s number Saturation (0-1)
---@param l number Lightness (0-1)
---@return number r Red component (0-255)
---@return number g Green component (0-255)
---@return number b Blue component (0-255)
local function hsl_to_rgb(h, s, l)
	h = h / 360
	local r, g, b

	if s == 0 then
		r, g, b = l, l, l -- achromatic
	else
		local function hue2rgb(p, q, t)
			if t < 0 then t = t + 1 end
			if t > 1 then t = t - 1 end
			if t < 1/6 then return p + (q - p) * 6 * t end
			if t < 1/2 then return q end
			if t < 2/3 then return p + (q - p) * (2/3 - t) * 6 end
			return p
		end

		local q = l < 0.5 and l * (1 + s) or l + s - l * s
		local p = 2 * l - q
		r = hue2rgb(p, q, h + 1/3)
		g = hue2rgb(p, q, h)
		b = hue2rgb(p, q, h - 1/3)
	end

	return math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5)
end

--- Darken a hex color by reducing its lightness in HSL space
---@param hex string Original hex color
---@param amount number Darkening amount (0.0-1.0, where 1.0 = maximum darkening)
---@return string darkened_hex The darkened hex color
function M.darken_color(hex, amount)
	local r, g, b = hex_to_rgb(hex)
	local h, s, l = rgb_to_hsl(r, g, b)

	-- Reduce lightness by the specified amount
	l = l * (1 - amount)

	-- Clamp lightness to valid range
	l = math.max(0, math.min(1, l))

	local new_r, new_g, new_b = hsl_to_rgb(h, s, l)
	return rgb_to_hex(new_r, new_g, new_b)
end

--- Apply dimming to an entire color palette
---@param palette ColorPalette Original color palette
---@param dimming_config OneHalfDimming Dimming configuration
---@return ColorPalette dimmed_palette The dimmed color palette
function M.dim_palette(palette, dimming_config)
	local dimmed = {}
	local dim_level = dimming_config.dim_level or 0.2
	local preserve_accents = dimming_config.preserve_accents

	-- Define accent colors that may be preserved
	local accent_colors = {
		"red", "green", "yellow", "blue", "purple", "cyan"
	}

	-- Create a set for faster lookup
	local accent_set = {}
	for _, color in ipairs(accent_colors) do
		accent_set[color] = true
	end

	for key, color in pairs(palette) do
		if type(color) == "string" and color:match("^#%x%x%x%x%x%x$") then
			-- This is a valid hex color
			local is_accent = accent_set[key]
			local should_preserve = preserve_accents and is_accent

			if should_preserve then
				-- For accent colors, apply lighter dimming or none at all
				dimmed[key] = M.darken_color(color, dim_level * 0.3)
			else
				-- For non-accent colors, apply full dimming
				dimmed[key] = M.darken_color(color, dim_level)
			end
		else
			-- Non-color value, copy as-is
			dimmed[key] = color
		end
	end

	return dimmed
end

return M
