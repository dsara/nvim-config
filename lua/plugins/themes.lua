return {
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		lazy = false,
		priority = 1000,
		config = function()
			require("ayu").setup({
				mirage = false,
				terminal = false,
				overrides = {},
			})
			vim.cmd.colorscheme("ayu")
		end,
		enabled = false,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = {
					light = "latte",
					dark = "mocha",
				},
				color_overrides = {
					mocha = {
						base = "#000000",
						mantle = "#0d0d0d",
						crust = "#000000",
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
		enabled = true,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		priority = 1000,
		layz = false,
		config = function()
			vim.opt.background = "dark"
			vim.cmd.colorscheme("oxocarbon")
		end,
		enabled = false,
	},
}
