return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 
  use "nvim-lua/plenary.nvim" 

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

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

  use { "sbdchd/neoformat" }
end)
