vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- disable cut stored in register
keymap("n", "x", '"_x', options)

-- custom save
keymap("n", "<leader>ss", ":w<CR>", options)
keymap("n", "<leader>sq", ":wq<CR>", options)
keymap("n", "<leader>qq", ":q!<CR>", options)

-- split windows
keymap("n", "<leader>sv", ":vsplit<CR>", options)
keymap("n", "<leader>sh", ":split<CR>", options)
keymap("n", "<leader>sx", ":close<CR>", options)

-- move between windows
keymap("n", "<leader>fh", "<C-w>h", options)
keymap("n", "<leader>fj", "<C-w>j", options)
keymap("n", "<leader>fk", "<C-w>k", options)
keymap("n", "<leader>fl", "<C-w>l", options)

-- tabs
keymap("n", "<leader>tn", ":tabnew<CR>", options)
keymap("n", "<leader>tx", ":tabclose<CR>", options)
keymap("n", "<leader>th", ":tabprev<CR>", options)
keymap("n", "<leader>tl", ":tabnext<CR>", options)



