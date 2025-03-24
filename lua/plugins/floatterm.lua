return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<leader>`", ":FloatermToggle<CR>", {})
		vim.keymap.set("t", "<leader>``", "<C-\\><C-n>:FloatermToggle<CR>", {})
	end,
}
