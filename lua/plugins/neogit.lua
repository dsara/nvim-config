return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>ng", ":Neogit<CR>", { desc = "Opens neogit", silent = true })
	end,
}
