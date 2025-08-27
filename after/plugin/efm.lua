require("lspconfig").efm.setup({
  init_options = { documentFormatting = true },
  filetypes = {
    "javascript", "javascriptreact",
    "typescript", "typescriptreact",
  },
  root_dir = require("lspconfig.util").root_pattern(
    "eslint.config.mjs",
    ".eslintrc", ".eslintrc.js", ".eslintrc.cjs",
    ".eslintrc.json", ".eslintrc.yaml", ".eslintrc.yml",
    "package.json"
  ),
  settings = {
    languages = {
      javascript = {
        {
          lintCommand  = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
          lintStdin    = true,
          lintFormats  = { "%f:%l:%c: %m" },
        },
      },
      typescript = { 
        {
          lintCommand  = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
          lintStdin    = true,
          lintFormats  = { "%f:%l:%c: %m" },
        },
      },
    },
  },
  on_attach = require("nathan.lsp.on_attach").on_attach,
})
