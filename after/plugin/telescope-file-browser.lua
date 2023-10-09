require("telescope").setup {
    extensions = {
        file_browser = {
            -- theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                    ["<C-t>"] = function(prompt_bufnr)
                        -- open the prompt in a new tab
                        require("telescope.actions").select_tab(prompt_bufnr)
                        -- open up the picker again
                        require("telescope.builtin").resume()
                        -- return to normal mode
                        vim.api.nvim_feedkeys(
                            vim.api.nvim_replace_termcodes("<Esc>", true, false,
                                                           true), "n", true)
                    end,
                    ["<cr>"] = function(bufnr)
                        require("telescope.actions.set").edit(bufnr, "tab drop")
                    end
                },
                ["n"] = {
                    ["<C-t>"] = function(prompt_bufnr)
                        -- open the prompt in a new tab
                        require("telescope.actions").select_tab(prompt_bufnr)
                        -- open up the picker again
                        require("telescope.builtin").resume()
                        -- return to normal mode
                        vim.api.nvim_feedkeys(
                            vim.api.nvim_replace_termcodes("<Esc>", true, false,
                                                           true), "n", true)
                    end
                }
            }
        }
    }
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
