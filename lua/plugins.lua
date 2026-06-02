vim.pack.add(
{
    "https://github.com/lukas-reineke/indent-blankline.nvim",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/Mofiqul/vscode.nvim",
    "https://github.com/romgrk/barbar.nvim",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/nvim-tree/nvim-tree.lua",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/Saghen/blink.lib",
    "https://github.com/Saghen/blink.cmp",
})

require("ibl").setup()

require("fzf-lua").setup
{
    fzf_colors = true
}

require("vscode").setup
{
    transparent = true,
    italic_comments = false,
    italic_inlayhints = false,
    underline_links = true,
    disable_nvimtree_bg = true,
    color_overrides =
    {
        vscLineNumber = "#FFFFFF",
    },
}
require("barbar").setup
{
    animation = false,
    clickable = true,
    focus_on_close = "left",
    sidebar_filetypes =
    {
        NvimTree = true,
    }
}

require("lualine").setup
{
    options =
    {
        icons_enabled = true,
        theme = "tomorrow_night",
    },
    extensions =
    {
        "nvim-tree",
    },
}

require("nvim-tree").setup
{
    sync_root_with_cwd = true,
    disable_netrw = true,
    hijack_cursor = true,
    update_focused_file =
    {
        enable = true,
        update_root = false,
    },
    git =
    {
        enable  = true,
        ignore = false,
        timeout = 100
    },
    renderer =
    {
        root_folder_label = false,
    },
}

require('blink.cmp').build():wait(20000)
require('blink.cmp').setup
{
    keymap =
    {
        preset = "none",
        ["<C-Space>"] = { "show", "hide" },
        ["<C-CR>"] = { "accept", "fallback"},
        ["<C-j>"] = {"select_next", "fallback"},
        ["<C-k>"] = {"select_prev", "fallback"},
        ["<Tab>"] = {"snippet_forward", "fallback"},
        ["<S-Tab>"] = {"snippet_backward", "fallback"},
    },
    sources =
    {
        default = { 'lsp', 'path', 'buffer' }
    },
}
