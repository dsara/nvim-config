return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			vim.keymap.set("n", "<leader>ghr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true }),
			vim.keymap.set("n", "<leader>ghp", ":Gitsigns preview_hunk_inline<CR>", { noremap = true, silent = true }),
			vim.keymap.set("n", "<A-[>", ":Gitsigns prev_hunk<CR>", { noremap = true, silent = true }),
			vim.keymap.set("n", "<A-]>", ":Gitsigns next_hunk<CR>", { noremap = true, silent = true }),
		})
	end,
}
