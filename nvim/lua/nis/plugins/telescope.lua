return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup()

    local keymap = vim.api.nvim_set_keymap
    local options = { noremap = true, silent = true }

    keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", options)
    keymap("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", options)
  end
}
