return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true, -- use the classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_raname = false, -- enables an input dialog for inc-reanme.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
		})
		require("notify").setup({
			background_colour = "#000000",
		})
		require("telescope").load_extension("noice")

		vim.keymap.set(
			"n",
			",nh",
			"<cmd>NoiceHistory<cr>",
			{ noremap = true, silent = true, desc = "Notication history (noice)" }
		)
	end,
	enabled = true,
}
