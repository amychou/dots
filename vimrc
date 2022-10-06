" ========== Indentation ==========

" By default, indentation without hard tabs is 2 spaces
set softtabstop=2 " Must be same value as shiftwidth if no hard tabs
set shiftwidth=2 " Affects automatic indentation and  >>, << or == behavior
set expandtab " Insert spaces when tab key is pressed

" Indentation purely with hard tab (turn off softtabstop and expandtab to use)
set tabstop=2 " Must be same value as shiftwidth if hard tabs

" Copies the indentation from the previous line when starting new line
" Unlike smartindent and cindent, autoindent does not interfere with file
" based indentation
set autoindent

" ===== Filetype-based indentation =====
" To enable, :filetype detect and then :source ~/.vimrc
"
" Use indentation scripts located in the indent folder of vim installation
" Create e.g. python.vim inside of ~/.vim/after/ftplugin
filetype indent plugin on

" Hardcoded for commonly used filetypes
" Python is 4 spaces (redundant with python.vim but overrides it)
autocmd Filetype python setlocal shiftwidth=4 softtabstop=4 expandtab


syntax on
set noerrorbells
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
set belloff=all 

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'tomlion/vim-solidity'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'preservim/nerdtree'
" Plug 'sheerun/vim-polyglot'
call plug#end()

" set background=dark

" colo morning
hi MatchParen cterm=bold ctermbg=lightgreen ctermfg=red

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

" More natural split opening
set splitbelow 
set splitright 

" Easier split navigations (ctrl-j instead of ctrl-w and then j)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Even easir split navigations (space-j instead of ctrl-w and then j)
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>p <C-W><C-W>


" replace currently selected text with default register
" without yanking it. "_ is the 'blackhole register' according to 
" :help "_
vnoremap <leader>p "_dP

" Open NERDTree with <leader nt
nmap <silent><leader>t :NERDTreeToggle<CR>
