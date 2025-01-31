local M = {}

function M.get(C, O)
	return {

		ColorColumn = { bg = C.color_col },
		Conceal = { fg = C.fg, },
		Cursor = { fg = C.bg, bg = C.blue },
		lCursor = { fg = C.bg, bg = C.blue },
		CursorIM = { fg = C.bg, bg = C.blue },
		CursorColumn = { bg = C.cursor_line },
		CursorLine = { bg = C.cursor_line },
		CursorLineNr = { fg = C.fg, },
		Directory = { fg = C.blue, },
		-- EndOfBuffer
		ErrorMsg = { fg = C.fg, },
		VertSplit = { fg = C.vertsplit, bg = C.vertsplit },
		Folded = { fg = C.fg, },
		FoldColumn = { fg = C.fg, },
		SignColumn = { fg = C.fg, },
		-- SignColumnSB= { fg = c.fg,  },
		-- Substitute
		LineNr = { fg = C.gutter_fg, bg = C.gutter_bg },
		-- CursorLineNR
		MatchParen = { fg = C.fg, styles = { "underline" } },
		ModeMsg = { fg = C.fg, },
		-- MsgSeparator
		MoreMsg = { fg = C.fg, },
		NonText = { fg = C.non_text, },
		Normal = { fg = C.fg, bg = C.bg },
		-- NormalNC
		-- NoramlSB
		NormalFloat = { fg = C.comment_fg, bg = C.bg },
		-- FloatBorder
		-- FloatTitle
		Pmenu = { fg = C.comment_fg, bg = C.bg },
		PmenuSel = { bg = C.selection },
		PmenuSbar = { fg = C.selection, },
		PmenuThumb = { fg = C.selection, },
		Question = { fg = C.purple, },
		--QuickFixLine
		Search = { fg = C.bg, bg = C.yellow },
		IncSearch = { fg = C.bg, bg = C.yellow },
		-- CurSearch
		SpecialKey = { fg = C.fg, },
		SpellBad = { fg = C.red, },
		SpellCap = { fg = C.yellow, },
		SpellLocal = { fg = C.yellow, },
		SpellRare = { fg = C.yellow, },
		StatusLine = { fg = C.blue, bg = C.cursor_line },
		StatusLineNC = { fg = C.comment_fg, bg = C.cursor_line },
		TabLine = { fg = C.comment_fg, bg = C.cursor_line },
		TabLineFill = { fg = C.comment_fg, bg = C.cursor_line },
		TabLineSel = { fg = C.fg, bg = C.bg },
		-- TermCursor
		-- TermCursorNC
		Title = { fg = C.green, },
		Visual = { bg = C.selection },
		VisualNOS = { bg = C.selection },
		WarningMsg = { fg = C.red, },
		Whitespace = { fg = C.non_text, },
		WildMenu = { fg = C.fg, },
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
