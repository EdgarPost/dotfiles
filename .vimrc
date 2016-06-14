filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" line wrap indicator
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Don't use those arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" auto-save on focus lost
au FocusLost * :wa

" NERDTree toggle to ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Solarized theme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
