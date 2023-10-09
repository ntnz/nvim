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
    }, {"lewis6991/gitsigns.nvim"},
    {"ms-jpq/coq.artifacts", branch = "artifacts"},
    {"ms-jpq/coq.thirdparty", branch = "3p"},
    {"ms-jpq/coq_nvim", branch = "coq"}, {"neovim/nvim-lspconfig"},
    {"nvim-telescope/telescope-file-browser.nvim"}, {
        "nvim-telescope/telescope.nvim",
        version = "0.1.0",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {"nvim-tree/nvim-web-devicons"}, {"nvim-treesitter/nvim-treesitter"},
    {"nyoom-engineering/oxocarbon.nvim"}, {"williamboman/mason-lspconfig.nvim"},
    {"williamboman/mason.nvim"}, {"xiyaowong/transparent.nvim"}
})
