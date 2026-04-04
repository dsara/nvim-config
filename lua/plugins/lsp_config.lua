return {
  {
    'williamboman/mason.nvim',
    config = function() require('mason').setup() end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'yamlls', 'ts_ls', 'bashls', 'jsonls' },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    opts = {
      servers = {
        lua_ls = {},
        yamlls = {},
        ts_ls = {},
        bashls = {},
        jsonls = {},
        rust_analyzer = {},
        fish_lsp = {},
      },
    },
    config = function(_, opts)
      for server, config in pairs(opts.servers) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        vim.lsp.config(server, config)
      end

      vim.diagnostic.config({ virtual_text = true })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Signature info (LSP)' })
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature help (LSP)' })
      vim.keymap.set('n', 'gD', vim.lsp.buf.definition, { desc = 'Goto definition (LSP)' })
      vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, { desc = 'Goto declaration (LSP)' })
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Goto Implementation (LSP)' })
      vim.keymap.set(
        { 'n', 'v' },
        '<leader>ca',
        vim.lsp.buf.code_action,
        { desc = 'Code Actions (LSP)' }
      )
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename (LSP)' })
    end,
  },
}
