local cmp = require 'cmp'
local luasnip = require 'luasnip'

cmp.setup({
    snippet = {expand = function(args) luasnip.lsp_expand(args.body) end},
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.abort()
    },
    sources = {{name = 'nvim_lsp'}, {name = 'luasnip'}, {name = 'buffer'}}
})

-- Set configuration for a specific filetype.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{name = 'buffer'}}
})

cmp.setup.cmdline('?', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{name = 'buffer'}}
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{name = 'path'}, {name = 'cmdline'}}
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace '<YOUR_LSP_SERVER>' with each LSP server you've enabled.
-- require('lspconfig').<YOUR_LSP_SERVER>.setup {
--   capabilities = capabilities,
-- }
