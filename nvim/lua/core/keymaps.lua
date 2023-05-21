-- set map leader
vim.g.mapleader = " "

local keymap = vim.keymap

-- disable cut stored in register
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- custom save
keymap.set("n", "<leader>ss", ":w<CR>")

-- custom quit
keymap.set("n", "<leader>wq", ":wq<CR>")
keymap.set("n", "<leader>qq", ":q!<CR>")
keymap.set("n", "<leader>qa", ":qa!<CR>")

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- move between split windows
keymap.set("n", "<leader>fh", "<C-w>h")
keymap.set("n", "<leader>fl", "<C-w>l")
keymap.set("n", "<leader>fj", "<C-w>j")
keymap.set("n", "<leader>fk", "<C-w>k")

-- tabs
keymap.set("n", "<leader>tn", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tl", ":tabn<CR>")
keymap.set("n", "<leader>th", ":tabp<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")

-- lsp
keymap.set("n", "K", vim.lsp.buf.hover, {})
keymap.set("n", "<leader>fr", require("telescope.builtin").lsp_references, {})
