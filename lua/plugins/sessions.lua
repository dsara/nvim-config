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

		vim.keymap.set("n", "<leader>sf", function()
			require("resession").load(nil, { dir = "dirsession", reset = false })
		end, { noremap = true, silent = true, desc = "Load folder session (ressession)" })

		vim.api.nvim_create_autocmd("VimLeavePre", {
			callback = function()
				resession.save(vim.fn.getcwd(), { dir = "dirsession", notify = false })
			end,
		})
	end,
}
