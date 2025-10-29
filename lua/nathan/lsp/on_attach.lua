local M = {}

-- single augroup for all LSP clients
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

M.on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    -- clear any existing autocmd in this group+buffer
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    -- format on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

return M
