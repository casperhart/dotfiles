runtime ./plug.vim

let g:mapleader = "\<space>"
let maplocalleader = ","

" file explorer :explore
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Set this variable to 1 to fix files wheinin you save them.
let g:ale_fix_on_save = 1

lua require('nvim-autopairs').setup{}

nnoremap <leader><leader> <c-^>
nnoremap <leader>w :w<cr>

" use escape to exit from terminal
tnoremap <Esc> <C-\><C-n>

vnoremap . :norm.<CR>

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
set splitright
set clipboard=unnamed
set linebreak

" set hidden

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:ale_fix_of_save = 1

syntax on

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
