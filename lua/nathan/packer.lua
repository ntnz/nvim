-- This fil: can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'ThePrimeagen/vim-be-good'
  use 'lewis6991/gitsigns.nvim'
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use {'ms-jpq/coq_nvim', branch = 'coq'}
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use {'ms-jpq/coq.thirdparty', branch = '3p'}
  use {'nyoom-engineering/oxocarbon.nvim'}
  use {"nvim-telescope/telescope-file-browser.nvim"}
  use {
    "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }
  use 'nvim-tree/nvim-web-devicons'
  use {
    'KadoBOT/nvim-spotify',
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
      local spotify = require 'nvim-spotify'

      spotify.setup {
        -- default opts
        status = {
          update_interval = 10000, -- the interval (ms) to check for what's currently playing
          format = '%s %t by %a' -- spotify-tui --format argument
        }
      }
    end,
    run = 'make'
  }
  use 'xiyaowong/transparent.nvim'
end)
