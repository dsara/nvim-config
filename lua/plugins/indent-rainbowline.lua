return {
	{
		"lukas-reineke/indent-blankline.nvim",
		dependencies = {
			"TheGlander/indent-rainbowline.nvim",
		},
		main = "ibl",
		opts = function(_, opts)
			return require("indent-rainbowline").make_opts(opts)
		end,
		enabled = false,
	},
	{
		"saghen/blink.nvim",
		lazy = false,
		opts = {
			indent = { enabled = true },
		},
	},
}
