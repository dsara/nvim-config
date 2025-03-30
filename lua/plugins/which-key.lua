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
			{ "<leader>c", group = "Code" },
			{
				"<leader>g",
				group = "git",
				icon = { icon = "󰊢", color = "orange" },
				{

					{
						"<leader>gh",
						group = "Gitsigns hunks",
						icon = { icon = "", color = "orange" },
						{
							{
								"<leader>ghr",
								"<cmd>Gitsigns reset_hunk<cr>",
								desc = "Reset git hunk (gitsigns)",
								noremap = true,
								silent = true,
								icon = { icon = "", color = "orange" },
							},
							{
								"<leader>ghp",
								"<cmd>Gitsigns preview_hunk_inline<cr>",
								desc = "Preview git hunk inline (gitsigns)",
								noremap = true,
								silent = true,
								icon = { icon = "", color = "orange" },
							},
						},
					},
				},
			},
			{ "<leader>h", group = "highlights", icon = { icon = "󰸱", color = "yellow" } },
		})
	end,
}
