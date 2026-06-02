local opt = vim.opt

opt.termguicolors = true
opt.clipboard = "unnamedplus"

opt.spell = false
opt.number = true
opt.cursorline = true
opt.wrap = true
opt.scrolloff = 5

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.showmatch = false
opt.showmode = false
opt.cmdheight = 1
opt.fillchars = { eob = " " }

local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

opt.undofile = true
opt.undodir = undodir
opt.swapfile = false
opt.updatetime = 2000
opt.autoread = true
opt.autowrite = false

opt.mouse = "a"
opt.mousemoveevent = true

opt.iskeyword:remove("_")
opt.iskeyword:remove("-")
