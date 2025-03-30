return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<F12>", ":FloatermToggle<CR>", { desc = "Toggle floatterm" })
		vim.keymap.set("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", { desc = "Toggle floatterm" })
	end,
	enabled = false,
}
