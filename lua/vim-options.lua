vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.opt.termguicolors = true
-- Space leader key and remove default functionality
vim.g.mapleader = " "
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.keymap.set("v", "<Space>", "<Nop>", { silent = true })

-- Fast quit
vim.keymap.set("n", "<F1>", "<cmd>qa<CR>", { desc = "Quit all safely" })
vim.keymap.set("n", "<F5>", "<cmd>wqa<cr>", { desc = "Write and quit all" })
vim.keymap.set("n", "<enter>", "<cmd>w<cr>", { desc = "Write buffer" })

vim.keymap.set("n", "<leader>xe", vim.diagnostic.open_float, { desc = "Show floating diagnostic" })

-- Remove highlights until next search
vim.keymap.set("n", "<leader>hh", ":nohlsearch<CR>", { silent = true, desc = "Remove search highlight" })

-- Quick window move activation
vim.keymap.set("n", "<leader>wh", "<C-w>h", { silent = true, desc = "Window move left" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { silent = true, desc = "Window move right" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { silent = true, desc = "Window move down" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { silent = true, desc = "Window move up" })

-- Tab creation and  navigation
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { silent = true, desc = "New Tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { silent = true, desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { silent = true, desc = "Next Tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { silent = true, desc = "Close Tab" })

-- Window management
vim.keymap.set("n", "<leader>ws", ":split<CR>", { desc = "Horizontal split", noremap = true, silent = true })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical split", noremap = true, silent = true })
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

-- Autosave
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
	pattern = "*",
	callback = function()
		if vim.bo.modified and vim.bo.modifiable then
			vim.cmd("silent! write")
		end
	end,
})
