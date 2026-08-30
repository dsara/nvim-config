return {
  -- Surround content during editing
  {
    'kylechui/nvim-surround',
    version = '^3.0.0',
    event = 'VeryLazy',
    config = function() require('nvim-surround').setup({}) end,
  },
  -- Bracket, string, and content pairing
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    enabled = false,
  },
  {
    'saghen/blink.pairs',
    version = '*',
    dependencies = 'saghen/blink.download',
    build = function() require('blink.pairs').download():pwait(60000) end,
    --- @module "blink.pairs"
    --- @type blink.pairs.Config
    opts = {},
    enabled = false,
  },
}
