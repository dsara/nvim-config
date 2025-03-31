return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false

		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		map("n", "<A-,>", "<cmd>BufferPrevious<cr>", opts)
		map("n", "<A-.>", "<cmd>BufferNext<cr>", opts)
		map("n", "<A-<>", "<cmd>BufferMovePrevious<cr>", opts)
		map("n", "<A->>", "<cmd>BufferMoveNext<cr>", opts)
		map("n", "<A-p>", "<cmd>BufferPin<cr>", opts)
		map("n", "<A-c>", "<cmd>BufferClose<cr>", opts)
		map("n", "<C-p>", "<cmd>BufferPick<cr>", opts)
		map("n", "<C-s-p>", "<cmd>BufferPickDelete<cr>", opts)
	end,
	opts = {},
	version = "^1.0.0",
	enabled = true,
}
