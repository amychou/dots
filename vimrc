syntax on
filetype indent plugin on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
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

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'sheerun/vim-polyglot'

call plug#end()

" set background=dark

colo morning 
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

if executable('rg')
  let g:rg_derive_root='true'
  endif

" No recursive mapping for space
nnoremap <SPACE> <Nop>
" Set leader key for space
let mapleader=" "

" Keyboard shortcuts for YcmCompleter
" <CR> means enter, so this just jumps straight to definition without
" a confirmation prompt
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gi :YcmCompleter GoToImplementation<CR>

nnoremap <leader>vm :source $MYVIMRC

" Remap navigation through vim jumplist (default is Ctrl+O and Ctrl+I
nmap <leader>o <C-O>
nmap <leader>i <C-I>

" Add full path of current file to status line
set statusline=%F
" Always display status line
set laststatus=2
