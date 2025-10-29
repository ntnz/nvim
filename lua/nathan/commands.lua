vim.api.nvim_create_user_command("RestartLsp", function()
    vim.fn.jobstart({"eslint_d", "restart"}, {
        stdout_buffered = true,
        on_stdout = function(_, data)
            if data then print(table.concat(data, "\n")) end
        end
    })

    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({bufnr = bufnr})

    for _, client in pairs(clients) do
        vim.cmd("LspStop " .. client.name)
        vim.defer_fn(function() vim.cmd("LspStart " .. client.name) end, 300)
    end
end, {})
