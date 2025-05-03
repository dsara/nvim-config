return {
  -- Inline git changes
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup({
        vim.keymap.set(
          'n',
          '<leader>ghr',
          ':Gitsigns reset_hunk<CR>',
          { noremap = true, silent = true, desc = 'Reset git hunk (gitsigns)' }
        ),
        vim.keymap.set(
          'n',
          '<leader>ghp',
          ':Gitsigns preview_hunk_inline<CR>',
          { noremap = true, silent = true, desc = 'Preview git hunk inline (gitsigns)' }
        ),
        vim.keymap.set(
          'n',
          '<A-[>',
          ':Gitsigns prev_hunk<CR>',
          { noremap = true, silent = true, desc = 'Move to previous hunk (gitsigns)' }
        ),
        vim.keymap.set(
          'n',
          '<A-]>',
          ':Gitsigns next_hunk<CR>',
          { noremap = true, silent = true, desc = 'Move to next hunk (gitsigns)' }
        ),
      })
    end,
  },
  -- Git management tool
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      vim.keymap.set('n', '<leader>gn', ':Neogit<CR>', { desc = 'Opens neogit', silent = true })
    end,
    enabled = false,
  },
}
