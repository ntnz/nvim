-- https://github.com/mantoni/eslint_d.js?tab=readme-ov-file#which-versions-of-eslint-are-supported
-- vim.loop.os_setenv("ESLINT_USE_FLAT_CONFIG", "true")
local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        filter = function(client)
            -- apply whatever logic you want (in this example, we'll only use null-ls)
            return client.name == "null-ls"
        end,
        bufnr = bufnr
    })
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.code_actions.cspell,
        require("null-ls").builtins.code_actions.eslint_d,
        require("null-ls").builtins.diagnostics.cspell,
        require("null-ls").builtins.diagnostics.eslint_d,
        require("null-ls").builtins.formatting.beautysh,
        require("null-ls").builtins.formatting.lua_format,
        require("null-ls").builtins.formatting.prettierd,
        require("null-ls").builtins.hover.printenv
    },

    -- add to your shared on_attach callback
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({group = augroup, buffer = bufnr})
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function() lsp_formatting(bufnr) end
            })
        end
    end
})
