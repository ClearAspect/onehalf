local M = {}

function M.get(C, O)
	return {
		-- Main dropbar highlights
		DropBarCurrentContext = { link = "Visual" }, -- Background of selected/clicked symbol in dropbar
		DropBarFzfMatch = { link = "Special" }, -- Fzf fuzzy search matches
		DropBarHover = { link = "Visual" },    -- Background of the dropbar symbol when the mouse is hovering over it
		DropBarPreview = { link = "Visual" },  -- Range of the symbol under the cursor in source code

		-- Icon highlights
		DropBarIconKindDefault = { link = "Special" },       -- Default highlight for dropbar icons
		DropBarIconKindDefaultNC = { link = "WinBarNC" },    -- Default highlight for dropbar icons in non-current windows
		DropBarIconKind = { link = "Repeat" },               -- Highlights of corresponding symbol kind icons
		DropBarIconKindNC = { link = "DropBarIconKindDefaultNC" }, -- Highlights of corresponding symbol kind icons in non-current windows

		-- UI elements
		DropBarIconUIIndicator = { link = "SpecialChar" },          -- Shortcuts before entries in utils.menu.select()
		DropBarIconUIPickPivot = { link = "Error" },                -- Shortcuts shown before each symbol after entering pick mode
		DropBarIconUISeparator = { link = "Comment" },              -- Separator between each symbol in dropbar
		DropBarIconUISeparatorMenu = { link = "DropBarIconUISeparator" }, -- Separator between each symbol in dropbar menus

		-- Menu highlights
		DropBarMenuCurrentContext = { link = "PmenuSel" }, -- Background of current line in dropbar menus
		DropBarMenuFloatBorder = { link = "FloatBorder" }, -- Border of dropbar menus
		DropBarMenuHoverEntry = { link = "IncSearch" }, -- Background of hovered line in dropbar menus
		DropBarMenuHoverIcon = { reverse = true },   -- Background of hovered symbol icon in dropbar menus
		DropBarMenuHoverSymbol = { bold = true },    -- Background of hovered symbol name in dropbar menus
		DropBarMenuNormalFloat = { link = "NormalFloat" }, -- Normal text in dropbar menus
		DropBarMenuSbar = { link = "PmenuSbar" },    -- Scrollbar background of dropbar menus
		DropBarMenuThumb = { link = "PmenuThumb" },  -- Scrollbar thumb of dropbar menus

		-- Symbol kind highlights
		DropBarKind = {}, -- Highlights of corresponding symbol kind names
		DropBarKindNC = {}, -- Highlights of corresponding symbol kind names in non-current windows
	}
end

return M
