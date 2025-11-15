local M = {}

--- Get highlight groups for nvim-treesitter integration
---@param C ColorPalette Color palette for the current theme variant
---@param O OneHalfOptions User configuration options
---@return table<string, table> highlights Mapping of highlight group names to their attributes
function M.get(C, O)
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

	return { -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
		-- Identifiers
		["@variable"] = { fg = C.fg, styles = O.styles.variables or {} }, -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = C.yellow }, -- Variable names that are defined by the languages, like this or self.
		["@variable.parameter"] = { fg = C.red }, -- For parameters of a function.
		-- ["@variable.parameter.builtin"] = {}, -- For builtin parameters of a function
		["@variable.member"] = { fg = C.fg }, -- Object and struct fields.

		["@constant"] = { link = "Constant" }, -- For constants
		["@constant.builtin"] = { link = "Constant" }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

		["@module"] = { fg = C.red }, -- For identifiers referring to modules and namespaces.
		-- ["@module.builtin"] = {},
		["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.

		-- Literals
		["@string"] = { link = "String" }, -- For strings.
		["@string.documentation"] = { fg = C.fg }, -- For strings documenting code (e.g. Python docstrings).
		["@string.regexp"] = { link = "String" }, -- For regexes.
		["@string.escape"] = { link = "String" }, -- For escape characters within a string.
		["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)
		["@string.special.path"] = { link = "Special" }, -- filenames
		["@string.special.symbol"] = { fg = C.fg }, -- symbols or atoms
		["@string.special.url"] = { fg = C.cyan, italic = true, underline = true }, -- urls, links and emails

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" }, -- For booleans.
		["@number"] = { link = "Number" }, -- For all numbers
		["@number.float"] = { link = "Float" }, -- For floats.

		-- Types
		["@type"] = { link = "Type" }, -- For types.
		["@type.builtin"] = { link = "Type" }, -- For builtin types.
		["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)

		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
		-- ["@attribute.builtin"] = { link = "Constant" },
		["@property"] = { fg = C.red }, -- Same as TStreesitterField.

		-- Functions
		["@function"] = { link = "Function", styles = O.styles.functions or {} }, -- For function (calls and definitions).
		["@function.builtin"] = { link = "Function" }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "Function" }, -- function calls
		["@function.macro"] = { link = "Funciton" }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.

		["@function.method"] = { link = "Function" }, -- For method definitions.
		["@function.method.call"] = { fg = C.fg }, -- For method calls.

		["@constructor"] = { fg = C.blue }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

		-- Keywords
		["@keyword"] = { fg = C.blue, styles = O.styles.keywords or {} }, -- For keywords that don't fall in previous categories.
		["@keyword.coroutine"] = { link = "Keyword" }, -- For keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
		["@keyword.function"] = { fg = C.red }, -- For keywords used to define a function.
		["@keyword.operator"] = { link = "Operator" }, -- For new keyword operator
		["@keyword.import"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@keyword.type"] = { link = "Keyword" }, -- For keywords describing composite types (e.g. `struct`, `enum`)
		["@keyword.modifier"] = { fg = C.red }, -- For keywords modifying other constructs (e.g. `const`, `static`, `public`)
		["@keyword.repeat"] = { link = "Repeat" }, -- For keywords related to loops.
		["@keyword.return"] = { fg = C.red },
		["@keyword.debug"] = { link = "Exception" }, -- For keywords related to debugging
		["@keyword.exception"] = { link = "Exception" }, -- For exception related keywords.

		["@keyword.conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
		["@keyword.conditional.ternary"] = { link = "Operator" }, -- For ternary operators (e.g. `?` / `:`)

		["@keyword.directive"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
		["@keyword.directive.define"] = { link = "Define" }, -- preprocessor definition directives
		-- JS & derivative
		["@keyword.export"] = { fg = C.blue },

		-- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
		["@punctuation.bracket"] = { link = "Delimiter" }, -- For brackets and parenthesis.
		["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

		-- Comment
		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { link = "Comment" }, -- For comments documenting code

		["@comment.error"] = { fg = C.bg, bg = C.red },
		["@comment.warning"] = { fg = C.bg, bg = C.yellow },
		["@comment.hint"] = { fg = C.bg, bg = C.blue },
		["@comment.todo"] = { fg = C.bg, bg = C.purple },
		["@comment.note"] = { fg = C.bg, bg = C.purple },

		-- Markup
		["@markup"] = { fg = C.fg }, -- For strings considerated text in a markup language.
		["@markup.strong"] = { fg = C.red, bold = true }, -- bold
		["@markup.italic"] = { fg = C.red, italic = true }, -- italic
		["@markup.strikethrough"] = { fg = C.fg, strikethrough = true }, -- strikethrough text
		["@markup.underline"] = { link = "Underlined" }, -- underlined text

		["@markup.heading"] = { fg = C.blue, bold = true }, -- titles like: # Example

		["@markup.math"] = { fg = C.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@markup.quote"] = { fg = C.red, bold = true }, -- block quotes
		["@markup.environment"] = { fg = C.purple }, -- text environments of markup languages
		["@markup.environment.name"] = { fg = C.blue }, -- text indicating the type of an environment

		["@markup.link"] = { link = "Tag" }, -- text references, footnotes, citations, etc.
		["@markup.link.label"] = { link = "Label" }, -- link, reference descriptions
		["@markup.link.url"] = { fg = C.purple, italic = true, underline = true }, -- urls, links and emails

		["@markup.raw"] = { fg = C.cyan }, -- used for inline code in markdown and for doc in python (""")

		["@markup.list"] = { link = "Special" },
		["@markup.list.checked"] = { fg = C.green }, -- todo notes
		["@markup.list.unchecked"] = { fg = C.overlay1 }, -- todo notes

		-- Diff
		["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
		["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
		["@diff.delta"] = { link = "diffChanged" }, -- deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = C.comment_fg }, -- Tags like html tag names.
		["@tag.attribute"] = { fg = C.comment_fg }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = C.comment_fg }, -- Tag delimiter like < > /

		-- Misc
		["@error"] = { link = "Error" },

		-- Language specific:
		-- bash
		["@function.builtin.bash"] = { fg = C.red },

		-- markdown
		["@markup.heading.1.markdown"] = { link = "rainbow1" },
		["@markup.heading.2.markdown"] = { link = "rainbow2" },
		["@markup.heading.3.markdown"] = { link = "rainbow3" },
		["@markup.heading.4.markdown"] = { link = "rainbow4" },
		["@markup.heading.5.markdown"] = { link = "rainbow5" },
		["@markup.heading.6.markdown"] = { link = "rainbow6" },

		-- java
		["@constant.java"] = { fg = C.cyan },

		-- css
		["@property.css"] = { fg = C.purple },
		["@property.id.css"] = { fg = C.blue },
		["@property.class.css"] = { fg = C.yellow },
		["@type.css"] = { fg = C.purple },
		["@type.tag.css"] = { fg = C.purple },
		["@string.plain.css"] = { fg = C.purple },
		["@number.css"] = { fg = C.purple },

		-- toml
		["@property.toml"] = { fg = C.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = C.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@constructor.lua"] = { fg = C.fg }, -- For constructor calls and definitions: = { } in Lua.
		["@property.lua"] = { fg = C.red }, -- For constructor calls and definitions: = { } in Lua.

		-- typescript
		["@property.typescript"] = { fg = C.purple },
		["@constructor.typescript"] = { fg = C.purple },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = C.purple },
		["@tag.attribute.tsx"] = { fg = C.cyan },

		-- yaml
		["@variable.member.yaml"] = { fg = C.blue }, -- For fields.

		-- Ruby
		["@string.special.symbol.ruby"] = { fg = C.purple },

		-- PHP
		["@function.method.php"] = { link = "Function" },
		["@function.method.call.php"] = { link = "Function" },

		-- C/CPP
		["@type.builtin.c"] = { fg = C.yellow },
		["@property.cpp"] = { fg = C.fg },
		["@type.builtin.cpp"] = { fg = C.yellow },

		-- gitcommit
		["@comment.warning.gitcommit"] = { fg = C.yellow },

		-- gitignore
		["@string.special.path.gitignore"] = { fg = C.fg },

		-- Misc
		gitcommitSummary = { fg = C.purple },
		zshKSHFunction = { link = "Function" },
	}
end

return M
