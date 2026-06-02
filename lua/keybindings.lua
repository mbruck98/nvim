vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", ";", ":")
map("v", "<", "<gv")
map("v", ">", ">gv")
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>")
map("i", "<C-x>", "<ESC>")

map("n", "<leader>c", "<Cmd>noh<CR>", { desc = "Clear search highlights" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

map("n", "<Tab>", "<cmd>BufferNext<CR>")
map("n", "<S-Tab>", "<cmd>BufferPrevious<CR>")
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')
map("n", "<leader>x", "<cmd>BufferClose<CR>")

map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "FZF files" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "FZF buffers" })
map("n", "<leader>fb", "<cmd>FzfLua live_grep<CR>", { desc = "FZF live grep" })

map("n", "<leader>k", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Show LSP diagnostic" })
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Show LSP code actions" })
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "LSP Rename symbol" })
map("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP go to definition" })
map("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "LSP go to implementation" })

