syntax on
filetype indent plugin on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=indent,eol,start

set mouse=a
set splitbelow 
set splitright 

set belloff=all 

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'

call plug#end()

" colorscheme gruvbox
" set background=dark

" colo morning 
" colo simple-dark 
let g:gruvbox_contrast_dark="soft"
colo gruvbox
set background=dark
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

if executable('rg')
  let g:rg_derive_root='true'
endif
