return {
  'kawre/leetcode.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    lang = 'cpp',
    injector = {
      ['cpp'] = {
        before = { '#include <bits/stdc++.h>', 'using namespace std;' },
        after = 'int main() {}',
      },
    },
    keys = {
      vim.keymap.set('n', '<space>r', ':Leet run<CR>', { noremap = true, silent = true }),
      vim.keymap.set('n', '<space>s', ':Leet submit<CR>', { noremap = true, silent = true }),
    },
  },
}
