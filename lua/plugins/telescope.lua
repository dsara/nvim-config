return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"sharkdp/fd",
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files (telescope)" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live file grep (telescope)" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers (telescope)" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help (telescope)" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
