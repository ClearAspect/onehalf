local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()


	--[[
		@annotationxxx cleared
		@repeatxxx cleared
		@preprocxxx cleared
		@namespacexxx cleared
		@methodxxx cleared
		@includexxx cleared
		@floatxxx cleared
		@fieldxxx cleared
		@exceptionxxx cleared
		@conditionalxxx cleared
	--]]

	return {                                     -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
		-- Identifiers
		["@variable"] = { fg = c.fg },           -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = c.yellow }, -- Variable names that are defined by the languages, like this or self.
		["@variable.parameter"] = { fg = c.fg }, -- For parameters of a function.
		-- ["@variable.parameter.builtin"] = {}, -- For builtin parameters of a function
		["@variable.member"] = { fg = c.fg },    -- Object and struct fields.

		["@constant"] = { link = "Constant" },   -- For constants
		["@constant.builtin"] = { link = "Constant" }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

		["@module"] = { fg = c.red },            -- For identifiers referring to modules and namespaces.
		-- ["@module.builtin"] = {},
		["@label"] = { link = "Label" },         -- For labels: label: in C and :label: in Lua.

		-- Literals
		["@string"] = { link = "String" },                                    -- For strings.
		["@string.documentation"] = { fg = c.fg },                            -- For strings documenting code (e.g. Python docstrings).
		["@string.regexp"] = { link = "String" },                             -- For regexes.
		["@string.escape"] = { link = "String" },                             -- For escape characters within a string.
		["@string.special"] = { link = "Special" },                           -- other special strings (e.g. dates)
		["@string.special.path"] = { link = "Special" },                      -- filenames
		["@string.special.symbol"] = { fg = c.fg },                           -- symbols or atoms
		["@string.special.url"] = { fg = c.cyan, italic = true, underline = true }, -- urls, links and emails

		["@character"] = { link = "Character" },                              -- character literals
		["@character.special"] = { link = "SpecialChar" },                    -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" },                                  -- For booleans.
		["@number"] = { link = "Number" },                                    -- For all numbers
		["@number.float"] = { link = "Float" },                               -- For floats.

		-- Types
		["@type"] = { link = "Type" },      -- For types.
		["@type.builtin"] = { link = "Type" }, -- For builtin types.
		["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)

		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
		-- ["@attribute.builtin"] = { link = "Constant" },
		["@property"] = { fg = c.fg },      -- Same as TStreesitterField.

		-- Functions
		["@function"] = { link = "Function" },   -- For function (calls and definitions).
		["@function.builtin"] = { link = "Function" }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "Function" }, -- function calls
		["@function.macro"] = { link = "Funciton" }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.

		["@function.method"] = { link = "Function" }, -- For method definitions.
		["@function.method.call"] = { fg = c.fg }, -- For method calls.

		["@constructor"] = { fg = c.blue },      -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@operator"] = { link = "Operator" },   -- For any operator: +, but also -> and * in C.

		-- Keywords
		["@keyword"] = { fg = c.blue },                     -- For keywords that don't fall in previous categories.
		["@keyword.coroutine"] = { link = "Keyword" },      -- For keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
		["@keyword.function"] = { fg = c.red },             -- For keywords used to define a function.
		["@keyword.operator"] = { link = "Operator" },      -- For new keyword operator
		["@keyword.import"] = { link = "Include" },         -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@keyword.type"] = { link = "Keyword" },           -- For keywords describing composite types (e.g. `struct`, `enum`)
		["@keyword.modifier"] = { fg = c.red },             -- For keywords modifying other constructs (e.g. `const`, `static`, `public`)
		["@keyword.repeat"] = { link = "Repeat" },          -- For keywords related to loops.
		["@keyword.return"] = { fg = c.red },
		["@keyword.debug"] = { link = "Exception" },        -- For keywords related to debugging
		["@keyword.exception"] = { link = "Exception" },    -- For exception related keywords.

		["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
		["@keyword.conditional.ternary"] = { link = "Operator" }, -- For ternary operators (e.g. `?` / `:`)

		["@keyword.directive"] = { link = "PreProc" },      -- various preprocessor directives & shebangs
		["@keyword.directive.define"] = { link = "Define" }, -- preprocessor definition directives
		-- JS & derivative
		["@keyword.export"] = { fg = c.blue },

		-- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
		["@punctuation.bracket"] = { link = "Delimiter" }, -- For brackets and parenthesis.
		["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

		-- Comment
		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { link = "Comment" }, -- For comments documenting code

		["@comment.error"] = { fg = c.bg, bg = c.red },
		["@comment.warning"] = { fg = c.bg, bg = c.yellow },
		["@comment.hint"] = { fg = c.bg, bg = c.blue },
		["@comment.todo"] = { fg = c.bg, bg = c.purple },
		["@comment.note"] = { fg = c.bg, bg = c.purple },

		-- Markup
		["@markup"] = { fg = c.fg },                                         -- For strings considerated text in a markup language.
		["@markup.strong"] = { fg = c.red, bold = true },                    -- bold
		["@markup.italic"] = { fg = c.red, italic = true },                  -- italic
		["@markup.strikethrough"] = { fg = c.fg, strikethrough = true },     -- strikethrough text
		["@markup.underline"] = { link = "Underlined" },                     -- underlined text

		["@markup.heading"] = { fg = c.blue, bold = true },                  -- titles like: # Example

		["@markup.math"] = { fg = c.blue },                                  -- math environments (e.g. `$ ... $` in LaTeX)
		["@markup.quote"] = { fg = c.red, bold = true },                     -- block quotes
		["@markup.environment"] = { fg = c.purple },                         -- text environments of markup languages
		["@markup.environment.name"] = { fg = c.blue },                      -- text indicating the type of an environment

		["@markup.link"] = { link = "Tag" },                                 -- text references, footnotes, citations, etc.
		["@markup.link.label"] = { link = "Label" },                         -- link, reference descriptions
		["@markup.link.url"] = { fg = c.purple, italic = true, underline = true }, -- urls, links and emails

		["@markup.raw"] = { fg = c.cyan },                                   -- used for inline code in markdown and for doc in python (""")

		["@markup.list"] = { link = "Special" },
		["@markup.list.checked"] = { fg = c.green }, -- todo notes
		["@markup.list.unchecked"] = { fg = c.overlay1 }, -- todo notes

		-- Diff
		["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
		["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
		["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = c.comment_fg },     -- Tags like html tag names.
		["@tag.attribute"] = { fg = c.comment_fg }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = c.comment_fg }, -- Tag delimiter like < > /

		-- Misc
		["@error"] = { link = "Error" },

		-- Language specific:
		-- bash
		["@function.builtin.bash"] = { fg = c.red },

		-- markdown
		["@markup.heading.1.markdown"] = { link = "rainbow1" },
		["@markup.heading.2.markdown"] = { link = "rainbow2" },
		["@markup.heading.3.markdown"] = { link = "rainbow3" },
		["@markup.heading.4.markdown"] = { link = "rainbow4" },
		["@markup.heading.5.markdown"] = { link = "rainbow5" },
		["@markup.heading.6.markdown"] = { link = "rainbow6" },

		-- java
		["@constant.java"] = { fg = c.cyan },

		-- css
		["@property.css"] = { fg = c.purple },
		["@property.id.css"] = { fg = c.blue },
		["@property.class.css"] = { fg = c.yellow },
		["@type.css"] = { fg = c.purple },
		["@type.tag.css"] = { fg = c.purple },
		["@string.plain.css"] = { fg = c.purple },
		["@number.css"] = { fg = c.purple },

		-- toml
		["@property.toml"] = { fg = c.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = c.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@constructor.lua"] = { fg = c.fg }, -- For constructor calls and definitions: = { } in Lua.
		["@property.lua"] = { fg = c.red }, -- For constructor calls and definitions: = { } in Lua.

		-- typescript
		["@property.typescript"] = { fg = c.purple },
		["@constructor.typescript"] = { fg = c.purple },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = c.purple },
		["@tag.attribute.tsx"] = { fg = c.cyan },

		-- yaml
		["@variable.member.yaml"] = { fg = c.blue }, -- For fields.

		-- Ruby
		["@string.special.symbol.ruby"] = { fg = c.purple },

		-- PHP
		["@function.method.php"] = { link = "Function" },
		["@function.method.call.php"] = { link = "Function" },

		-- C/CPP
		["@type.builtin.c"] = { fg = c.yellow },
		["@property.cpp"] = { fg = c.fg },
		["@type.builtin.cpp"] = { fg = c.yellow },

		-- gitcommit
		["@comment.warning.gitcommit"] = { fg = c.yellow },

		-- gitignore
		["@string.special.path.gitignore"] = { fg = c.fg },

		-- Misc
		gitcommitSummary = { fg = c.purple },
		zshKSHFunction = { link = "Function" },
	}
end

return M
