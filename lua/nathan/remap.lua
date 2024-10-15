local nnoremap = require("nathan.keymap").nnoremap
local inoremap = require("nathan.keymap").inoremap
local vnoremap = require("nathan.keymap").vnoremap

-- open the diagnostic menu
nnoremap('<Leader>d', function()
    vim.diagnostic.open_float(nil, {scope = "cursor", focusable = false})
end)
inoremap('<C-d>', function()
    vim.diagnostic.open_float(nil, {scope = "cursor", focusable = false})
end)

-- open the sig help window
nnoremap('<leader>h', vim.lsp.buf.signature_help, {silent = true})
inoremap('<C-h>', vim.lsp.buf.signature_help, {silent = true})

-- telescope mappings
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")
nnoremap("<leader>fp", "<cmd>Telescope file_browser<CR>")

-- hardmode on
nnoremap("<Left>", "<Esc>")
nnoremap("<Right>", "<Esc>")
nnoremap("<Up>", "<Esc>")
nnoremap("<Down>", "<Esc>")
nnoremap("<PageUp>", "<Esc>")
nnoremap("<PageDown>", "<Esc>")

inoremap("<Left>", "<Esc>")
inoremap("<Right>", "<Esc>")
inoremap("<Up>", "<Esc>")
inoremap("<Down>", "<Esc>")
inoremap("<PageUp>", "<Esc>")
inoremap("<PageDown>", "<Esc>")

vnoremap("<Left>", "<Esc>")
vnoremap("<Right>", "<Esc>")
vnoremap("<Up>", "<Esc>")
vnoremap("<Down>", "<Esc>")
vnoremap("<PageUp>", "<Esc>")
vnoremap("<PageDown>", "<Esc>")
