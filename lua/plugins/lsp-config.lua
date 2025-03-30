return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "yamlls", "ts_ls", "bashls", "jsonls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Signature info (LSP)" })
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help (LSP)" })
			vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "Goto definition (LSP)" })
			vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { desc = "Goto declaration (LSP)" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation (LSP)" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions (LSP)" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename (LSP)" })
		end,
	},
}
