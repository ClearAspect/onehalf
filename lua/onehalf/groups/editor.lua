local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {

		ColorColumn = { bg = c.color_col },
		Conceal = { fg = c.fg, },
		Cursor = { fg = c.bg, bg = c.blue },
		lCursor = { fg = c.bg, bg = c.blue },
		CursorIM = { fg = c.bg, bg = c.blue },
		CursorColumn = { bg = c.cursor_line },
		CursorLine = { bg = c.cursor_line },
		CursorLineNr = { fg = c.fg, },
		Directory = { fg = c.blue, },
		-- EndOfBuffer
		ErrorMsg = { fg = c.fg, },
		VertSplit = { fg = c.vertsplit, bg = c.vertsplit },
		Folded = { fg = c.fg, },
		FoldColumn = { fg = c.fg, },
		SignColumn = { fg = c.fg, },
		-- SignColumnSB= { fg = c.fg,  },
		-- Substitute
		LineNr = { fg = c.gutter_fg, bg = c.gutter_bg },
		-- CursorLineNR
		MatchParen = { fg = c.fg, underline = true, },
		ModeMsg = { fg = c.fg, },
		-- MsgSeparator
		MoreMsg = { fg = c.fg, },
		NonText = { fg = c.non_text, },
		Normal = { fg = c.fg, bg = c.bg },
		-- NormalNC
		-- NoramlSB
		NormalFloat = { fg = c.comment_fg, bg = c.bg },
		-- FloatBorder
		-- FloatTitle
		Pmenu = { fg = c.comment_fg, bg = c.bg },
		PmenuSel = { bg = c.selection },
		PmenuSbar = { fg = c.selection, },
		PmenuThumb = { fg = c.selection, },
		Question = { fg = c.purple, },
		--QuickFixLine
		Search = { fg = c.bg, bg = c.yellow },
		IncSearch = { fg = c.bg, bg = c.yellow },
		-- CurSearch
		SpecialKey = { fg = c.fg, },
		SpellBad = { fg = c.red, },
		SpellCap = { fg = c.yellow, },
		SpellLocal = { fg = c.yellow, },
		SpellRare = { fg = c.yellow, },
		StatusLine = { fg = c.blue, bg = c.cursor_line },
		StatusLineNC = { fg = c.comment_fg, bg = c.cursor_line },
		TabLine = { fg = c.comment_fg, bg = c.cursor_line },
		TabLineFill = { fg = c.comment_fg, bg = c.cursor_line },
		TabLineSel = { fg = c.fg, bg = c.bg },
		-- TermCursor
		-- TermCursorNC
		Title = { fg = c.green, },
		Visual = { bg = c.selection },
		VisualNOS = { bg = c.selection },
		WarningMsg = { fg = c.red, },
		Whitespace = { fg = c.non_text, },
		WildMenu = { fg = c.fg, },
		-- WinBar
		-- WinBarNc
		-- WinSeparator




		-- PmenuKind = { link = 'Pmenu' },
		-- PmenuKindSel = { link = 'PmenuSel' },
		-- PmenuExtra = { link = 'Pmenu' },
		-- PmenuExtraSel = { link = 'PmenuSel' },

	}
end

return M
