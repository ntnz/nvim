-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.cmd("set cursorline")
vim.cmd("set so=999")
vim.cmd("set mouse=")

vim.g.mapleader = " "

vim.g.coq_settings = { auto_start = 'shut-up' } 
