local nvim_lsp = require('lspconfig')
local coq = require('coq')
local servers = { 'tsserver', 'ember' }

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {}
  nvim_lsp[lsp].setup {coq.lsp_ensure_capabilities{}}
end

