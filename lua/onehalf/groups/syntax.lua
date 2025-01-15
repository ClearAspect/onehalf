local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()


	return {

		Comment = { fg = c.comment_fg, italic = true, }, -- Comments
		SpecialComment = { fg = c.fg, },           -- Special things inside comments
		Constant = { fg = c.cyan, },               -- (preferred) any constant
		String = { fg = c.green, },                -- a string constant: "this is a string"
		Character = { fg = c.green, },             -- a character constant: 'c', '\n'
		Number = { fg = c.yellow, },               -- a number constant: 234, 0xff
		Float = { fg = c.yellow, },                -- a floating point constant: 2.3e10
		Boolean = { fg = c.yellow, },              -- a boolean constant: TRUE, false
		Identifier = { fg = c.red, },              -- (preferred) any variable name
		Function = { fg = c.blue, },               -- function name (also: methods for classes)
		Statement = { fg = c.purple, },            -- (preferred) any statement
		Conditional = { fg = c.purple, },          -- if, then, else, endif, switch, etc.
		Repeat = { fg = c.purple, },               -- for, do, while, etc.
		Label = { fg = c.purple, },                -- case, default, etc.
		Operator = { fg = c.fg, },                 -- "sizeof", "+", "*", etc.
		Keyword = { fg = c.red, },                 -- any other keyword
		Exception = { fg = c.red, },               -- try, catch, throw

		PreProc = { fg = c.yellow, },              -- (preferred) generic Preprocessor
		Include = { fg = c.purple, },              -- preprocessor #include
		Define = { fg = c.purple, },               -- preprocessor #define
		Macro = { fg = c.purple, },                -- same as Define
		PreCondit = { fg = c.yellow, },            -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = c.yellow, },         -- static, register, volatile, etc.
		Structure = { fg = c.yellow, },            -- struct, union, enum, etc.
		Special = { fg = c.blue, },                -- any special symbol
		Type = { fg = c.yellow, },                 -- int, long, char, etc.
		Typedef = { fg = c.yellow, },              -- A typedef
		SpecialChar = { fg = c.fg, },              -- special character in a constant
		Tag = { fg = c.fg, },                      -- you can use CTRL-] on this
		Delimiter = { fg = c.fg, },                -- character that needs attention
		Debug = { fg = c.fg, },                    -- debugging statements

		Underlined = { underline = true },         -- (preferred) text that stands out, HTML links
		Bold = { bold = true },                    -- (preferred) any bold text
		Italic = { italic = true },                -- (preferred) any italic text
		-- Ignore = { fg = c.fg,  }, 			

		Error = { fg = c.red, bg = c.gutter_bg }, -- (preferred) any erroneous construct
		Todo = { fg = c.purple, },          -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		-- qfLineNr
		-- qfFileName
		-- htmlH1
		-- htmlH2
		-- mkdHeading
		-- mkdCode
		-- mkdCodeDelimiter
		-- mkdCodeStart
		-- mkdCodeEnd
		-- mkdLink


		-- debugging
		-- debugPC
		-- debugBreakpoint
		-- illumanate
		-- illumaniatedWord
		-- illuminatedCurWord
		-- diff
		diffAdded = { fg = c.green },
		diffRemoved = { fg = c.red },
		diffChanged = { fg = c.yellow },
		diffOldFile = { fg = c.blue },
		diffNewFile = { fg = c.blue },
		diffFile = { fg = c.blue },
		diffLine = { fg = c.comment_fg },
		diffIndexLine = { fg = c.comment_fg },
		DiffAdd = { fg = c.green, }, -- diff mode: Added line
		DiffChange = { fg = c.yellow, }, -- diff mode: Changed line
		DiffDelete = { fg = c.red, }, -- diff mode: Deleted line
		DiffText = { fg = c.blue, }, -- diff mode: Changed text within a changed line

		-- healthError
		-- healthSuccess
		-- healthWarning


		-- glyphs
		-- GlyphPalette1 = { fg = c.red },
		-- GlyphPalette2 = { fg = c.teal },
		-- GlyphPalette3 = { fg = c.yellow },
		-- GlyphPalette4 = { fg = c.blue },
		-- GlyphPalette6 = { fg = c.teal },
		-- GlyphPalette7 = { fg = c.text },
		-- GlyphPalette9 = { fg = c.red },

		-- rainbow
		-- rainbow1 = { fg = c.red },
		-- rainbow2 = { fg = c.peach },
		-- rainbow3 = { fg = c.yellow },
		-- rainbow4 = { fg = c.green },
		-- rainbow5 = { fg = c.sapphire },
		-- rainbow6 = { fg = c.lavender },

		-- csv
		-- csvCol0 = { fg = c.red },
		-- csvCol1 = { fg = c.peach },
		-- csvCol2 = { fg = c.yellow },
		-- csvCol3 = { fg = c.green },
		-- csvCol4 = { fg = c.sky },
		-- csvCol5 = { fg = c.blue },
		-- csvCol6 = { fg = c.lavender },
		-- csvCol7 = { fg = c.mauve },
		-- csvCol8 = { fg = c.pink },

	}
end

return M
