local on_attach = require("nathan.lsp.on_attach").on_attach
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- if using cmp_nvim_lsp for completion capabilities, you can instead do:
-- local capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers({
  -- don't auto‐setup EFM
  ["efm"] = function() end,

  -- default handler for all servers
  function(server_name)
    require("lspconfig")[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,

  -- you can add overrides for specific servers here
  -- ["rust_analyzer"] = function()
  --   require("rust-tools").setup({
  --     on_attach = on_attach,
  --     capabilities = capabilities,
  --   })
  -- end,
})
