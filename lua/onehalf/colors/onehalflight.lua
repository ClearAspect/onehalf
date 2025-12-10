---@class ColorPalette
---@field black string Primary black color
---@field red string Primary red color
---@field green string Primary green color
---@field yellow string Primary yellow color
---@field blue string Primary blue color
---@field purple string Primary purple color
---@field cyan string Primary cyan color
---@field white string Primary white color
---@field fg string Default foreground color
---@field bg0 string Darkened background color
---@field bg1 string Default background color
---@field bg2 string Lightened background color
---@field comment_fg string Color for comments
---@field gutter_bg string Background color for line number gutter
---@field gutter_fg string Foreground color for line numbers
---@field non_text string Color for non-text elements
---@field cursor_line string Background color for cursor line
---@field color_col string Color column background
---@field selection string Selection background color
---@field vertsplit string Vertical split border color

---@type ColorPalette
local colors = {
	black = "#383a42",
	red = "#e45649",
	green = "#50a14f",
	yellow = "#c18401",
	blue = "#0184bc",
	purple = "#a626a4",
	cyan = "#0997b3",
	white = "#fafafa",
	fg = "#383a42",
	bg0 = "#e1e1e1",
	bg1 = "#fafafa",
	bg2 = "#fafafa",
	comment_fg = "#a0a1a7",
	gutter_bg = "#fafafa",
	gutter_fg = "#d4d4d4",
	non_text = "#e5e5e5",
	cursor_line = "#f0f0f0",
	color_col = "#f0f0f0",
	selection = "#bfceff",
	vertsplit = "#f0f0f0",
}

return colors
