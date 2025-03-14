return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<leader>`", ":FloatermToggle<CR>", {})
	end,
}
