return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = { "lua", "javascript", "vim", "vimdoc", "markdown" },
				highlight = { enable = true },
			})
		end,
	},
}
