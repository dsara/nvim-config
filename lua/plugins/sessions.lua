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

		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				-- Only load the session if nvim was started with no args and without reading from stdin
				if vim.fn.argc(-1) == 0 and not vim.g.using_stdin then
					-- Save these to a different directory, so our manual sessions don't get polluted
					resession.load(vim.fn.getcwd(), { dir = "dirsession", silence_errors = true })
				end
			end,
			nested = true,
		})

		vim.api.nvim_create_autocmd("VimLeavePre", {
			callback = function()
				resession.save(vim.fn.getcwd(), { dir = "dirsession", notify = false })
			end,
		})
		vim.api.nvim_create_autocmd("StdinReadPre", {
			callback = function()
				-- Store this for later
				vim.g.using_stdin = true
			end,
		})
	end,
}
