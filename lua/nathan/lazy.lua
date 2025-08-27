local lazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazyPath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazyPath,
	})
end

vim.opt.rtp:prepend(lazyPath)

require("lazy").setup({
	{ "nvim-lualine/lualine.nvim" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "nyoom-engineering/oxocarbon.nvim" },
	{ "xiyaowong/transparent.nvim" },
	{ "lewis6991/gitsigns.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
			"nvim-lua/plenary.nvim",
			"davidmh/cspell.nvim",
		},
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"onsails/lspkind.nvim",
			"zbirenbaum/copilot-cmp",
		},
	},
	{ "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" } },
	{ "Olical/conjure" },
	{ "PaterJason/cmp-conjure", dependencies = { "hrsh7th/nvim-cmp" } },
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "nvim-telescope/telescope-file-browser.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "tpope/vim-fugitive" },
})
