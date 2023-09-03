return {
  "VonHeikemen/fine-cmdline.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  config = function()
    local finecmdline = require("fine-cmdline")

    finecmdline.setup()

    local keymap = vim.api.nvim_set_keymap
    local options = { noremap = true, silent = true }

    keymap("n", "<CR>", "<cmd>FineCmdline<CR>", options)
    keymap("n", ":", "<cmd>FineCmdline<CR>", options)
  end
}
