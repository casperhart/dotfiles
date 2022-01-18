" plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'dense-analysis/ale' " to remove once lsp formatting is sorted

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-signify'
set updatetime=100
" file manager
Plug 'vifm/vifm.vim'
" completions
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim' " completion icons
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'windwp/nvim-autopairs'

Plug 'karb94/neoscroll.nvim'
Plug 'itchyny/lightline.vim'
  set noshowmode
  let g:lightline = {
        \ 'colorscheme': 'one',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'FugitiveHead'
        \ },
        \ }

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

