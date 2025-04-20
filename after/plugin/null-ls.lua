local nls = require("null-ls");
local on_attach = require("nathan.lsp.on_attach").on_attach
local cspell = require("cspell")

require("null-ls").setup({
  sources = {
    nls.builtins.formatting.prettierd,
    nls.builtins.formatting.shfmt,
    nls.builtins.formatting.stylua,
    nls.builtins.hover.printenv,
    cspell.diagnostics.with({
      diagnostics_postprocess = function(diagnostic)
        diagnostic.severity = vim.diagnostic.severity.HINT
      end,
    }),
    cspell.code_actions,
  },
  on_attach = on_attach,
})
