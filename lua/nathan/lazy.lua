local lazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazyPath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazyPath
    })
end
vim.opt.rtp:prepend(lazyPath)

require("lazy").setup({
    {"nvim-lualine/lualine.nvim"},
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {"L3MON4D3/LuaSnip", dependencies = {"rafamadriz/friendly-snippets"}}, {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "Olical/conjure", "PaterJason/cmp-conjure", "onsails/lspkind.nvim",
            "zbirenbaum/copilot-cmp", "hrsh7th/cmp-path", "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline", "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help", "saadparwaiz1/cmp_luasnip"
        }
    }, {"/hrsh7th/cmp-nvim-lsp"}, {"lewis6991/gitsigns.nvim"},
    {"neovim/nvim-lspconfig"}, {"nvim-telescope/telescope-file-browser.nvim"},
    {"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"}},
    {"nvim-tree/nvim-web-devicons"}, {"nvim-treesitter/nvim-treesitter"},
    {"nyoom-engineering/oxocarbon.nvim"}, {"williamboman/mason-lspconfig.nvim"},
    {"williamboman/mason.nvim"}, {"xiyaowong/transparent.nvim"}
})
