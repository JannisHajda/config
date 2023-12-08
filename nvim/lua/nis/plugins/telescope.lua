return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.close,
          },
        },
      }
    })

    local keymap = vim.api.nvim_set_keymap
    local options = { noremap = true, silent = true }

    keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", options)
    keymap("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", options)
    keymap("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", options)
  end
}
