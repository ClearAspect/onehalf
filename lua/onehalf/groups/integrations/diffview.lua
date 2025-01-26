local M = {}

function M.get()
	local c = require("onehalf.util").get_colors()

	return {

		-- Basic UI
		DiffviewNormal = { link = "Normal" },
		DiffviewDim1 = { link = "Comment" },
		DiffviewWinSeparator = { link = "WinSeparator" },

		-- Primary colors
		DiffviewPrimary = { link = "Function" },
		DiffviewSecondary = { link = "String" },

		-- File panel
		DiffviewFilePanelTitle = { fg = c.blue, bold = true },
		DiffviewFilePanelCounter = { link = "Normal" },
		DiffviewFilePanelFileName = { link = "Normal" },
		DiffviewFilePanelPath = { link = "Comment" },
		DiffviewFilePanelSelected = { link = "CursorLine" },
		DiffviewFilePanelRootPath = { fg = c.purple, bold = true },

		-- File panel stats
		DiffviewFilePanelInsertions = { link = "diffAdded" },
		DiffviewFilePanelDeletions = { link = "diffRemoved" },
		DiffviewFilePanelConflicts = { link = "diffChanged" },

		-- Folders
		DiffviewFolderName = { fg = c.blue, bold = true },
		DiffviewFolderSign = { link = "DiffviewFolderName" },

		-- Git elements
		DiffviewHash = { link = "@constant" },
		DiffviewReference = { fg = c.blue, bold = true },
		DiffviewReflogSelector = { link = "@keyword" },

		-- Status indicators
		DiffviewStatusAdded = { link = "diffAdded" },
		DiffviewStatusUntracked = { link = "diffAdded" },
		DiffviewStatusModified = { link = "diffChanged" },
		DiffviewStatusRenamed = { link = "diffChanged" },
		DiffviewStatusCopied = { link = "diffChanged" },
		DiffviewStatusTypeChange = { link = "diffChanged" },
		DiffviewStatusUnmerged = { link = "diffChanged" },
		DiffviewStatusDeleted = { link = "diffRemoved" },
		DiffviewStatusBroken = { link = "diffRemoved" },
		DiffviewStatusUnknown = { link = "diffRemoved" },
		DiffviewStatusIgnored = { link = "Comment" },
	}
end

return M
