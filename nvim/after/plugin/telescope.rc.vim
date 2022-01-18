nnoremap <silent> <C-p> :Telescope find_files<CR>
nnoremap <silent> <C-f> :Telescope live_grep<CR>
nnoremap <silent> <C-o> :Telescope buffers<CR>
nnoremap <silent> <C-i> :Telescope help_tags<CR> 

lua <<EOF
local actions = require('telescope.actions')

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
EOF

