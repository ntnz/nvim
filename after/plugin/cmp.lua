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
    sources = cmp.config.sources({
        {name = 'nvim_lsp'}, {name = 'nvim_lsp_signature_help'},
        {name = 'luasnip'}
    }, {{name = 'buffer'}})
})

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
    sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['ts_ls'].setup {capabilities = capabilities}
require('lspconfig')['ember'].setup {capabilities = capabilities}
