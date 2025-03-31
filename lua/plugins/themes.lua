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
		enabled = false,
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
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("moonfly")
		end,
		enabled = false,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd.colorscheme("rose-pine")
		end,
		enabled = false,
	},
	{
		"embark-theme/vim",
		name = "emabark",
		lazy = false,
		config = function()
			vim.cmd.colorscheme("embark")
		end,
		enabled = false,
	},
	{
		"sam4llis/nvim-tundra",
		name = "tundra",
		lazy = false,
		config = function()
			vim.g.tundra_biome = "arctic"
			vim.opt.background = "dark"
			vim.cmd.colorscheme("tundra")
		end,
		enabled = true,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		enabled = true,
	},
}
