return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim" 
  use "nvim-tree/nvim-web-devicons"
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require("nvim-tree").setup {}
    end
  }

  -- lsp
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",  
  }

  -- completion
  use { "hrsh7th/nvim-cmp"}
  use { "hrsh7th/cmp-nvim-lsp"}
  use { "L3MON4D3/LuaSnip" }
  use { "saadparwaiz1/cmp_luasnip" }
  use { "rafamadriz/friendly-snippets" }

  -- theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' }
  use { "github/copilot.vim" }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

end)
