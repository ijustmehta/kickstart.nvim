return {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  config = function()
    require('competitest').setup()

    -- Add keybinding for receiving problem from URL
    vim.keymap.set('n', '<leader>cp', '<cmd>CompetiTest receive problem<CR>', { noremap = true, silent = true, desc = 'Receive problem from URL' })
  end,
}
