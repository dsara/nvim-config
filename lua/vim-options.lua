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
vim.keymap.set("n", "<leader>hh", ":nohlsearch<CR>", { silent = true, desc = "Remove search highlight" })

-- Quick window move activation -- moved to which-key plugin
-- vim.keymap.set("n", "<leader>wh", "<C-w>h", { silent = true })
-- vim.keymap.set("n", "<leader>wl", "<C-w>l", { silent = true })
-- vim.keymap.set("n", "<leader>wj", "<C-w>j", { silent = true })
-- vim.keymap.set("n", "<leader>wk", "<C-w>k", { silent = true })

-- Tab creation and  navigation
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { silent = true, desc = "New Tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { silent = true, desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { silent = true, desc = "Next Tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { silent = true, desc = "Close Tab" })

-- Window management
-- moved to which-key plugin
-- vim.keymap.set("n", "<leader>ws", ":split<CR>", { desc = "Horizontal split", noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical split", noremap = true, silent = true })
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { noremap = true, desc = "Resize window up", silent = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { noremap = true, desc = "Resize window down", silent = true })
vim.keymap.set(
	"n",
	"<C-Left>",
	":vertical resize -2<CR>",
	{ noremap = true, desc = "Resize window left", silent = true }
)
vim.keymap.set(
	"n",
	"<C-Right>",
	":vertical resize +2<CR>",
	{ noremap = true, desc = "Resize window right", silent = true }
)
