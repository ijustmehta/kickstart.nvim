return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'davidosomething/format-ts-errors.nvim' },
  ft = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
  opts = {
    tsserver_file_preferences = {
      includeInlayParameterNameHints = 'all',
      includeInlayParameterNameHintsWhenArgumentMatchesName = true,
      includeInlayFunctionParameterTypeHints = true,
      includeInlayVariableTypeHints = true,
      includeInlayVariableTypeHintsWhenTypeMatchesName = true,
      includeInlayPropertyDeclarationTypeHints = true,
      includeInlayFunctionLikeReturnTypeHints = true,
      includeInlayEnumMemberValueHints = true,
    },
    expose_as_code_action = 'all',
    complete_function_calls = true,
  },
  config = function(_, opts)
    require('plugins.lsp.utils').on_attach('typescript-tools', function(_, bufnr)
      vim.keymap.set('n', '<leader>lo', '<cmd>TSToolsOrganizeImports<cr>', { buffer = bufnr, desc = 'Organize Imports' })
      vim.keymap.set('n', '<leader>lO', '<cmd>TSToolsSortImports<cr>', { buffer = bufnr, desc = 'Sort Imports' })
      vim.keymap.set('n', '<leader>lu', '<cmd>TSToolsRemoveUnused<cr>', { buffer = bufnr, desc = 'Removed Unused' })
      vim.keymap.set('n', '<leader>ld', '<cmd>TSToolsGoToSourceDefinition<cr>', { buffer = bufnr, desc = 'Go To Source Definition' })
      vim.keymap.set('n', '<leader>lR', '<cmd>TSToolsRemoveUnusedImports<cr>', { buffer = bufnr, desc = 'Removed Unused Imports' })
      vim.keymap.set('n', '<leader>lF', '<cmd>TSToolsFixAll<cr>', { buffer = bufnr, desc = 'Fix All' })
      vim.keymap.set('n', '<leader>lA', '<cmd>TSToolsAddMissingImports<cr>', { buffer = bufnr, desc = 'Add Missing Imports' })
    end)
    require('typescript-tools').setup(opts)
  end,
}
