--[[
The LSP client adds one or more highlights for each token. The highlight
groups are derived from the token's type and modifiers:
	`@lsp.type.<type>.<ft>` for the type
	`@lsp.mod.<mod>.<ft>` for each modifier
	`@lsp.typemod.<type>.<mod>.<ft>` for each modifier


:h lsp-semantic-highlight
--]]

local M = {}

function M.get(C, O)
	return {
		-- Identifiers
		["@lsp.type.variable"] = {}, -- Identifiers that declare or reference a local or global variable
		["@lsp.type.parameter"] = {}, -- Identifiers that declare or reference a function or method parameters
		["@lsp.type.property"] = {}, -- Identifiers that declare or reference a member property, member field, or member variable
		["@lsp.type.enumMember"] = {}, -- Identifiers that declare or reference an enumeration property, constant, or member
		["@lsp.type.event"] = {}, -- Identifiers that declare an event property
		["@lsp.type.namespace"] = { fg = C.red }, -- Identifiers that declare or reference a namespace, module, or package

		-- Literals
		["@lsp.type.string"] = {}, -- Tokens that represent a string literal
		["@lsp.type.regexp"] = {}, -- Tokens that represent a regular expression literal
		["@lsp.type.boolean"] = {}, -- Tokens that represent a boolean
		["@lsp.type.number"] = {}, -- Tokens that represent a number literal

		-- Types
		["@lsp.type.class"] = {}, -- Identifiers that declare or represent a class type
		["@lsp.type.enum"] = {}, -- Identifiers that declare or represent and
		["@lsp.type.interface"] = {}, -- Identifiers that declare or reference an interface type
		["@lsp.type.struct"] = {}, -- Identifiers that declare or reference a struct type
		["@lsp.type.type"] = {}, -- Identifiers that declare or reference a type that is not covered above
		["@lsp.type.typeParameter"] = {}, -- Identifiers that declare or reference a type parameter
		["@lsp.type.decorator"] = {}, -- Identifiers that declare or reference decorator and annotations

		-- Functions
		["@lsp.type.function"] = {}, -- Identifiers that declare a function
		["@lsp.type.method"] = {}, -- Identifiers that declare a member function or method
		["@lsp.type.macro"] = {}, -- Identifiers that declare a macro
		["@lsp.type.operator"] = {}, -- Tokens that represent an operator

		-- Keywords
		["@lsp.type.keyword"] = {}, -- Tokens that represent a language keyword
		["@lsp.type.modifier"] = {}, -- Tokens that represent a modifier

		-- Comments
		["@lsp.type.comment"] = {}, -- Tokens that represent a comment

		-- Other
		["@lsp.type.builtinType"] = {},
		["@lsp.type.escapeSequence"] = {},
		["@lsp.type.formatSpecifier"] = {},
		["@lsp.type.selfKeyword"] = {},
		["@lsp.type.typeAlias"] = {},
		["@lsp.type.unresolvedReference"] = {},

		["@lsp.typemod.class.defaultLibrary"] = {},
		["@lsp.typemod.enum.defaultLibrary"] = {},
		["@lsp.typemod.enumMember.defaultLibrary"] = {},
		["@lsp.typemod.function.defaultLibrary"] = {},
		["@lsp.typemod.keyword.async"] = {},
		["@lsp.typemod.macro.defaultLibrary"] = {},
		["@lsp.typemod.method.defaultLibrary"] = {},
		["@lsp.typemod.operator.injected"] = {},
		["@lsp.typemod.string.injected"] = {},
		["@lsp.typemod.type.defaultLibrary"] = {},
		["@lsp.typemod.variable.defaultLibrary"] = {},
		["@lsp.typemod.variable.injected"] = {},
	}
end

return M
