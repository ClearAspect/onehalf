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
	black = "#282c34",
	red = "#e06c75",
	green = "#98c379",
	yellow = "#e5c07b",
	blue = "#61afef",
	purple = "#c678dd",
	cyan = "#56b6c2",
	white = "#dcdfe4",
	fg = "#dcdfe4",
	bg0 = "#24282f",
	bg1 = "#282c34",
	bg2 = "#3a404c",
	comment_fg = "#5c6370",
	gutter_bg = "#282c34",
	gutter_fg = "#919baa",
	non_text = "#373C45",
	cursor_line = "#313640",
	color_col = "#313640",
	selection = "#474e5d",
	vertsplit = "#313640",
}

return colors
