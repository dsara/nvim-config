return {
	"declancm/cinnamon.nvim",
	version = "*",
	opts = {},
	config = function()
		require("cinnamon").setup({
			keymaps = {
				basic = true,
			},
		})
	end,
}
