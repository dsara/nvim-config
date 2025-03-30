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
					hide_gitignored = true,
				},
				use_libuv_file_watcher = true,
			},
		})
		vim.keymap.set(
			"n",
			"<leader>nt",
			":Neotree filesystem<CR>",
			{ noremap = true, silent = true, desc = "Show filesystem (neotree)" }
		)
		vim.keymap.set(
			"n",
			"<leader>ns",
			":Neotree git_status<CR>",
			{ noremap = true, silent = true, desc = "Show git status (neotree)" }
		)
		vim.keymap.set(
			"n",
			"<leader>nc",
			":Neotree close<CR>",
			{ noremap = true, silent = true, desc = "Close neotree" }
		)
		vim.keymap.set(
			"n",
			"<leader>nb",
			":Neotree buffers<CR>",
			{ noremap = true, silent = true, desc = "Show buffers (neotree)" }
		)
	end,
}
