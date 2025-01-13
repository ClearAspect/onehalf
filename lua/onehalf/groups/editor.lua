
local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {

	hl(0, "ColorColumn", { fg = 'NONE', bg = c.color_col })
	hl(0, "Conceal", { fg = c.fg, bg = 'NONE' })
	hl(0, "Cursor", { fg = c.bg, bg = c.blue })
	hl(0, "lCursor", { fg = c.bg, bg = c.blue })
	hl(0, "CursorIM", { fg = c.bg, bg = c.blue })
	hl(0, "CursorColumn", { fg = 'NONE', bg = c.cursor_line })
	hl(0, "CursorLine", { fg = 'NONE', bg = c.cursor_line })
	hl(0, "CursorLineNr", { fg = c.fg, bg = 'NONE' })
	hl(0, "Directory", { fg = c.blue, bg = 'NONE' })
		-- EndOfBuffer
	hl(0, "ErrorMsg", { fg = c.fg, bg = 'NONE' })
	hl(0, "VertSplit", { fg = c.vertsplit, bg = c.vertsplit })
	hl(0, "Folded", { fg = c.fg, bg = 'NONE' })
	hl(0, "FoldColumn", { fg = c.fg, bg = 'NONE' })
	hl(0, "SignColumn", { fg = c.fg, bg = 'NONE' })
	-- hl(0, "SignColumnSB", { fg = c.fg, bg = 'NONE' })
		-- Substitute
	hl(0, "LineNr", { fg = c.gutter_fg, bg = c.gutter_bg })
		-- CursorLineNR
	hl(0, "MatchParen", { fg = c.fg, bg = 'NONE', underline = true, })
	hl(0, "ModeMsg", { fg = c.fg, bg = 'NONE' })
		-- MsgSeparator
	hl(0, "MoreMsg", { fg = c.fg, bg = 'NONE' })
	hl(0, "NonText", { fg = c.non_text, bg = 'NONE' })
	hl(0, "Normal", { fg = c.fg, bg = c.bg })
		-- NormalNC
		-- NoramlSB
	hl(0, "NormalFloat", { fg = c.comment_fg, bg = c.bg })
		-- FloatBorder
		-- FloatTitle
	hl(0, "Pmenu", { fg = c.comment_fg, bg = c.bg })
	hl(0, "PmenuSel", { fg = 'NONE', bg = c.selection })
	hl(0, "PmenuSbar", { fg = c.selection, bg = 'NONE' })
	hl(0, "PmenuThumb", { fg = c.selection, bg = 'NONE' })
	hl(0, "Question", { fg = c.magenta, bg = 'NONE' })
		--QuickFixLine
	hl(0, "Search", { fg = c.bg, bg = c.yellow })
	hl(0, "IncSearch", { fg = c.bg, bg = c.yellow })
		-- CurSearch
	hl(0, "SpecialKey", { fg = c.fg, bg = 'NONE' })
	hl(0, "SpellBad", { fg = c.red, bg = 'NONE' })
	hl(0, "SpellCap", { fg = c.yellow, bg = 'NONE' })
	hl(0, "SpellLocal", { fg = c.yellow, bg = 'NONE' })
	hl(0, "SpellRare", { fg = c.yellow, bg = 'NONE' })
	hl(0, "StatusLine", { fg = c.blue, bg = c.cursor_line })
	hl(0, "StatusLineNC", { fg = c.comment_fg, bg = c.cursor_line })
	hl(0, "TabLine", { fg = c.comment_fg, bg = c.cursor_line })
	hl(0, "TabLineFill", { fg = c.comment_fg, bg = c.cursor_line })
	hl(0, "TabLineSel", { fg = c.fg, bg = c.bg })
		-- TermCursor
		-- TermCursorNC
	hl(0, "Title", { fg = c.green, bg = 'NONE' })
	hl(0, "Visual", { fg = 'NONE', bg = c.selection })
	hl(0, "VisualNOS", { fg = 'NONE', bg = c.selection })
	hl(0, "WarningMsg", { fg = c.red, bg = 'NONE' })
	hl(0, "Whitespace", { fg = c.non_text, bg = 'NONE' })

	hl(0, "WildMenu", { fg = c.fg, bg = 'NONE' })
		-- WinBar
		-- WinBarNc
		-- WinSeparator

	}
end

return M
