vim.cmd.colorscheme "vscode"

local hl = vim.api.nvim_set_hl
hl(0, "NvimTreeGitRenamedIcon", { fg = "#FFFF00", bg = "NONE" })
hl(0, "NvimTreeGitDeletedIcon", { fg = "#FF0000", bg = "NONE" })
hl(0, "NvimTreeGitStagedIcon", { fg = "#46DC46", bg = "NONE" })
hl(0, "NvimTreeGitDirtyIcon", { fg = "#FFF2CC", bg = "NONE" })
hl(0, "NvimTreeGitNewIcon", { fg = "#6CBCF9", bg = "NONE" })
