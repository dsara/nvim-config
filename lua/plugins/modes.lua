return {
	"mvllow/modes.nvim",
	version = "v0.2.1",
	config = function()
		-- Has a conflict with which-key to trigger properly, https://github.com/mvllow/modes.nvim?tab=readme-ov-file#known-issues
		require("modes").setup()
	end,
	enabled = true,
}
