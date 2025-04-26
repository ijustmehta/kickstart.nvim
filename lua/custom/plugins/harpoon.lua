return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'ThePrimeagen/vim-be-good',
  },
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    local opts = { noremap = true, silent = true }

    vim.keymap.set('n', '<leader>a', mark.add_file, opts)
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, opts)

    vim.keymap.set('n', '<leader>h', function()
      ui.nav_file(1)
    end, opts)
    vim.keymap.set('n', '<leader>j', function()
      ui.nav_file(2)
    end, opts)
    vim.keymap.set('n', '<leader>k', function()
      ui.nav_file(3)
    end, opts)
    vim.keymap.set('n', '<leader>l', function()
      ui.nav_file(4)
    end, opts)
  end,
}
