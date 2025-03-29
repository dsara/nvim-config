return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true }),
			vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk_inline<CR>", { noremap = true, silent = true }),
		})
	end,
}
