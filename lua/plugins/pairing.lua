return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		enabled = false,
	},
	{
		"saghen/blink.pairs",
		version = "*",
		dependencies = "saghen/blink.download",
		--- @module "blink.pairs"
		--- @type blink.pairs.Config
		opts = {},
	},
}
