return {
  -- Base linting tool
  {
    'mfussenegger/nvim-lint',
    config = function()
      local lint = require('lint')

      lint.linters_by_ft = {
        javascript = { 'eslint_d' },
        typescript = { 'eslint_d' },
        lua = { 'luacheck' },
        yaml = { 'yamllint' },
      }

      lint.linters.luacheck.args = {
        '--globals',
        'vim',
      }

      vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter' }, {
        callback = function() require('lint').try_lint() end,
      })
    end,
    enabled = true,
  },
  -- JSON/YAML Schema Store
  {
    'b0o/schemastore.nvim',
    enabled = true,
  },
  -- K8S Auto-detect from CRDs
  {
    'cwrau/yaml-schema-detect.nvim',
    config = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    ft = { 'yaml' },
    enabled = true,
  },
}
