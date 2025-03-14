vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
-- Space leader key and remove default functionality
vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.keymap.set("v", "<Space>", "<Nop>", { silent = true })

-- Fast quit
vim.keymap.set("n", "<leader>qq", ":qa<CR>", {})

-- Remove highlights until next search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { silent = true })

-- Quick window move activation
vim.keymap.set("n", "<leader>wh", "<C-w>h", { silent = true })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { silent = true })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { silent = true })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { silent = true })

-- Tab navigation
vim.keymap.set("n", "<A-h>", ":tabprevious<CR>", { silent = true })
vim.keymap.set("n", "<A-l>", ":tabnext<CR>", { silent = true })

-- Window splitting
vim.keymap.set("n", "<leader>ws", ":split<CR>", { desc = "Horizontal split", noremap = true })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical split", noremap = true })
