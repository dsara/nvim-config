return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = true,
				},
				filtered_items = {
					hide_dotfiles = false,
				},
				use_libuv_file_watcher = true,
			},
		})
		vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
