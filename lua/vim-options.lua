local opt = vim.opt

opt.expandtab = true
opt.softtabstop = 2
opt.shiftwidth = 2
opt.tabstop = 2
opt.colorcolumn = { '80', '100' }
opt.cursorline = true
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'number'

opt.wrap = false
opt.scrolloff = 8
opt.undofile = true
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
opt.completeopt = { 'menuone', 'noselect', 'popup', 'noinsert' }
opt.swapfile = false
opt.ignorecase = true
opt.shiftround = true
opt.background = 'dark'

-- word wrapping options
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
-- vim.opt.breakindentopt = 'shift:2,min:20'
vim.opt.showbreak = '↳ '
