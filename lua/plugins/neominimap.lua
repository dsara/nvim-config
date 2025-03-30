return {
	"Isrothy/neominimap.nvim",
	version = "v3.x.x",
	lazy = false,
	keys = {
		{ "<leader>mmt", "<cmd>Neominimap toggle<cr>", desc = "Toggle global minimap" },
	},
	init = function()
		vim.opt.wrap = false
		vim.opt.sidescrolloff = 36

		--@type Neominimap.UserConfig
		vim.g.neominimap = {
			auto_enable = false,
		}
	end,
}
