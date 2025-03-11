local M = {}

function M.get(C, O)
	local U = require("onehalf.util")
	return {

		Comment = { fg = C.comment_fg, styles = O.styles.comments or {} },   -- Comments
		SpecialComment = { link = "Comment" },                               -- Special things inside comments
		Constant = { fg = C.cyan, },                                         -- (preferred) any constant
		String = { fg = C.green, styles = O.styles.strings or {} },          -- a string constant: "this is a string"
		Character = { fg = C.green, },                                       -- a character constant: 'c', '\n'
		Number = { fg = C.yellow, styles = O.styles.numbers or {} },         -- a number constant: 234, 0xff
		Float = { link = "Number" },                                         -- a floating point constant: 2.3e10
		Boolean = { fg = C.cyan, styles = O.styles.booleans or {} },         -- a boolean constant: TRUE, false
		Identifier = { fg = C.red, styles = O.styles.variables or {} },      -- (preferred) any variable name
		Function = { fg = C.blue, styles = O.styles.functions or {} },       -- function name (also: methods for classes)
		Statement = { fg = C.purple, },                                      -- (preferred) any statement
		Conditional = { fg = C.purple, styles = O.styles.conditionals or {} }, -- if, then, else, endif, switch, etc.
		Repeat = { fg = C.purple, styles = O.styles.loops or {} },           -- for, do, while, etc.
		Label = { fg = C.purple, },                                          -- case, default, etc.
		Operator = { fg = C.fg, styles = O.styles.operators or {} },         -- "sizeof", "+", "*", etc.
		Keyword = { fg = C.red, styles = O.styles.keywords or {} },          -- any other keyword
		Exception = { fg = C.red, styles = O.styles.keywords or {} },        -- try, catch, throw

		PreProc = { fg = C.yellow, },                                        -- (preferred) generic Preprocessor
		Include = { fg = C.purple, styles = O.styles.keywords or {} },       -- preprocessor #include
		Define = { fg = C.purple, },                                         -- preprocessor #define
		Macro = { fg = C.purple, },                                          -- same as Define
		PreCondit = { fg = C.yellow, },                                      -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.yellow, },                                   -- static, register, volatile, etc.
		Structure = { fg = C.yellow, },                                      -- struct, union, enum, etc.
		Special = { fg = C.blue, },                                          -- any special symbol
		Type = { fg = C.yellow, styles = O.styles.types or {} },             -- int, long, char, etc.
		Typedef = { fg = C.yellow, },                                        -- A typedef
		SpecialChar = { fg = C.fg, },                                        -- special character in a constant
		Tag = { fg = C.fg, },                                                -- you can use CTRL-] on this
		Delimiter = { fg = C.fg, },                                          -- character that needs attention
		Debug = { fg = C.fg, },                                              -- debugging statements

		Underlined = { underline = true },                                   -- (preferred) text that stands out, HTML links
		Bold = { bold = true },                                              -- (preferred) any bold text
		Italic = { italic = true },                                          -- (preferred) any italic text
		-- Ignore = { fg = c.fg,  }, 			

		Error = { fg = C.red, bg = C.gutter_bg }, -- (preferred) any erroneous construct
		Todo = { fg = C.purple, },              -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
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
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.yellow },
		diffOldFile = { fg = C.blue },
		diffNewFile = { fg = C.blue },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.comment_fg },
		diffIndexLine = { fg = C.comment_fg },
		DiffAdd = { bg = U.blend_colors(C.green, C.bg, 0.25) },   -- diff mode: Added line
		DiffChange = { bg = U.blend_colors(C.yellow, C.bg, 0.25) }, -- diff mode: Changed line
		DiffDelete = { bg = U.blend_colors(C.red, C.bg, 0.25) },  -- diff mode: Deleted line
		DiffText = { bg = U.blend_colors(C.blue, C.bg, 0.25) },   -- diff mode: Changed text within a changed line

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
