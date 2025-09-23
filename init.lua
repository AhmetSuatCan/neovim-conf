vim.cmd("language en_US")
vim.cmd("language en_US")
-- Install packer.nvim (plugin manager)
vim.cmd [[packadd packer.nvim]]
--requires

require("completions")
require("lsp_config")
require("keymaps")
require("nvimtree")
require("treesitter")
-- Plugin configuration with packer
require('packer').startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'
  use {
    "lewis6991/gitsigns.nvim",
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("gitsigns").setup()
    end
  }
  use 'nvim-lua/plenary.nvim'             -- Utility functions
  use 'github/copilot.vim'             -- Copilot 
  use 'nvim-telescope/telescope.nvim'   -- Add Telescope plugin
  use 'nvim-tree/nvim-web-devicons'
  use "rebelot/kanagawa.nvim"
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-tree.lua'          -- File tree
  use 'nvim-treesitter/nvim-treesitter'   -- Syntax highlighting
  use 'neovim/nvim-lspconfig'             -- LSP configuration
  use 'williamboman/mason.nvim'       -- LSP/DAP installer
  use 'jay-babu/mason-null-ls.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason-lspconfig.nvim' -- Integration between Mason and lspconfig
  --Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
end)
-- Set the theme
vim.cmd("colorscheme kanagawa")


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'kanagawa',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
