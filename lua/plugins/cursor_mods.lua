return {
  -- Cursor movement
  {
    'sphamba/smear-cursor.nvim',
    opts = {
      stiffness = 0.5,
      trailing_stiffness = 0.49,
      never_draw_over_target = false,
    },
    enabled = false,
  },
  -- Cursor word highlighters
  {
    'RRethy/vim-illuminate',
    enabled = false,
  },
  {
    'echasnovski/mini.cursorword',
    version = '*',
    enabled = true,
  },
  -- Cursor mode line coloring
  {
    'mvllow/modes.nvim',
    version = 'v0.2.1',
    config = function()
      -- Has a conflict with which-key to trigger properly, https://github.com/mvllow/modes.nvim?tab=readme-ov-file#known-issues
      require('modes').setup()
    end,
    enabled = true,
  },
}
