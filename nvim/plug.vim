" plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

Plug 'dense-analysis/ale' " to remove once lsp formatting is sorted
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'airblade/vim-gitgutter'
" completions
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'karb94/neoscroll.nvim'

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
  let R_app = "radian"
  let R_cmd = "R"
  let R_args = []
  let R_hl_term = 0
  let R_bracketed_paste = 1
  let R_assign = 0
  let rout_follow_colorscheme = 1
	" let r_syntax_folding = 1

" list ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme onehalfdark

