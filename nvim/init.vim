runtime ./plug.vim

let g:mapleader = "\<space>"
let maplocalleader = ","

" file explorer :explore
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" smoother scrolling
lua require('neoscroll').setup()

nnoremap <silent> <C-p> :Files<cr>
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
nnoremap <silent> <C-o> :Buffers<cr>
nnoremap <silent> <C-f> :Rg<cr>
" switch between buffers
nnoremap <leader><leader> <c-^>
nnoremap <leader>w :w<cr>

" use escape to exit from terminal
tnoremap <Esc> <C-\><C-n>

filetype plugin on

if (has('termguicolors'))
  set termguicolors
end

set ignorecase
set smartcase
set tabstop=2 shiftwidth=2 expandtab
set number
set relativenumber number
set autowrite
set mouse=a

let g:ale_fix_of_save = 1

syntax on
