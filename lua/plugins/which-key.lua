return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		local wk = require("which-key")

		wk.add({
			{ "<leader>f", group = "Files" },
			{ "<leader>ff", desc = "Find File", mode = "n" },
			{ "<leader>fg", desc = "Live Grep Files", mode = "n" },
			{ "<leader>w", proxy = "<c-w>", group = "windows" },
			{ "<leader>n", group = "NeoTree" },
			{ "<leader>g", group = "git", icon = { icon = "󰊢", color = "orange" } },
			{ "<leader>h", group = "highlights" },
			{ "<leader>gh", group = "Gitsigns hunks", icon = { icon = "", color = "orange" } },
		})
	end,
}
