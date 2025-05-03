return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    opts = function(_, opts)
      local function on_move(data) Snacks.rename.on_rename_file(data.source, data.destination) end
      local events = require('neo-tree.events')
      opts.event_handlers = opts.event_handlers or {}
      vim.list_extend(opts.event_handlers, {
        { event = events.FILE_MOVED, handler = on_move },
        { event = events.FILE_RENAMED, handler = on_move },
      })
    end,
    config = function()
      require('neo-tree').setup({
        filesystem = {
          follow_current_file = {
            enabled = true,
            leave_dirs_open = true,
          },
          filtered_items = {
            hide_dotfiles = true,
            hide_gitignored = true,
          },
          use_libuv_file_watcher = true,
        },
      })
      vim.keymap.set(
        'n',
        '<leader>nt',
        ':Neotree filesystem<CR>',
        { noremap = true, silent = true, desc = 'Show filesystem (neotree)' }
      )
      vim.keymap.set(
        'n',
        '<leader>ns',
        ':Neotree git_status<CR>',
        { noremap = true, silent = true, desc = 'Show git status (neotree)' }
      )
      vim.keymap.set(
        'n',
        '<leader>nc',
        ':Neotree close<CR>',
        { noremap = true, silent = true, desc = 'Close neotree' }
      )
      vim.keymap.set(
        'n',
        '<leader>nb',
        ':Neotree buffers<CR>',
        { noremap = true, silent = true, desc = 'Show buffers (neotree)' }
      )
    end,
  },
}
