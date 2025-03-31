return {
	"stevearc/resession.nvim",
	opts = {
		extensions = {
			barabar = {},
		},
	},
	enabled = true,
	config = function()
		local resession = require("resession")
		resession.setup()

		vim.keymap.set(
			"n",
			"<leader>ss",
			resession.save,
			{ noremap = true, silent = true, desc = "Save session (resession)" }
		)
		vim.keymap.set(
			"n",
			"<leader>sl",
			resession.load,
			{ noremap = true, silent = true, desc = "Load session (resession)" }
		)
		vim.keymap.set(
			"n",
			"<leader>sd",
			resession.delete,
			{ noremap = true, silent = true, desc = "Delete session (resession)" }
		)
	end,
}
