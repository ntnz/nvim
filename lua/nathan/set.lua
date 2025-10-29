-- enable line numbers
vim.opt.nu = true

-- enable relative line numbers
vim.opt.relativenumber = true

-- use spaces instead of tabs
vim.opt.expandtab = true

-- number of spaces a tab counts for
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- enable incremental search
vim.opt.incsearch = true

-- enable smart indentation
vim.opt.smartindent = true

-- disable line wrapping
vim.opt.wrap = false

-- highlight the current line
vim.cmd("set cursorline")

-- keep cursor vertically centered
vim.cmd("set so=999")

-- disable mouse support
vim.cmd("set mouse=")

-- set leader key to space
vim.g.mapleader = " "

-- use indent-based folding
vim.opt.foldmethod = 'indent'

-- start with all folds open
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- make deep folds possible
vim.opt.foldnestmax = 10

-- prevent folding very short blocks
vim.opt.foldminlines = 1
