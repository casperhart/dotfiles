local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
--vim.keymap.set('n', '<C-P>', builtin.git_files, {})

require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
        },
      },
    },
  pickers = {
    find_files = {
      find_command = {"fd", "--type", "f", "--hidden", "--no-ignore-vcs"}
      }
    }
  }
