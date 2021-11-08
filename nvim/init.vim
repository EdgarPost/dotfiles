set nocompatible
filetype off

call plug#begin()

" " Syntax highlighting for many languages
Plug 'sheerun/vim-polyglot'

" " Code formatting
Plug 'editorconfig/editorconfig-vim'

" " Colorschemes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'

Plug 'jiangmiao/auto-pairs'
Plug 'farmergreg/vim-lastplace'
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'

" Plug 'w0rp/ale'
" Plug 'Galooshi/vim-import-js'
" Plug 'janko-m/vim-test'

call plug#end()

set encoding=utf8
scriptencoding utf8
set autoread
set hidden
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set number
set relativenumber
set cursorline
set scrolloff=15
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set nowrap
set showmatch
set colorcolumn=100
set incsearch
set hlsearch
set ignorecase
set smartcase
set noshowmode
set splitright
set splitbelow
set lazyredraw
set ttyfast

if has('persistent_undo')
    set undofile 
    set undodir=~/.vim/undo
endif

set directory=~/.vim/swap

:let mapleader = "\<space>"

" Close NERDTree and open vimrc
noremap <leader>, :NERDTreeClose<CR>:e ~/.config/nvim/init.vim<CR>
" Clear hightlight search
noremap <leader><leader> :nohlsearch<CR>

nmap <leader>a :Commands<CR>
nmap <leader>o :GFiles<CR>
nmap <leader>f :Ag<CR>
nmap <leader>e :History<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>t :NERDTreeVCS<CR>

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

augroup BufferWrite
autocmd!
autocmd BufWritePost ~/.config/nvim/init.vim silent so %
augroup END

" " Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:gruvbox_italic=1
colorscheme gruvbox

" NERDTree configuration
let NERDTreeShowHidden=1
let NERDTreeWinSize=60
let NERDTreeQuitOnOpen=1
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeGitStatusWithFlags = 1

function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction<Paste>


" Startify
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   ' . getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

" ======= coc settings
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

set updatetime=300
set shortmess+=c
set signcolumn=yes

command! -nargs=0 Prettier :CocCommand prettier.formatFile

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" instead of having ~/.vim/coc-settings.json
let s:LSP_CONFIG = {
\  'flow': {
\    'command': exepath('flow'),
\    'args': ['lsp'],
\    'filetypes': ['javascript', 'javascriptreact'],
\    'initializationOptions': {},
\    'requireRootPattern': 1,
\    'settings': {},
\    'rootPatterns': ['.flowconfig']
\  }
\}

let s:languageservers = {}
for [lsp, config] in items(s:LSP_CONFIG)
  let s:not_empty_cmd = !empty(get(config, 'command'))
  if s:not_empty_cmd | let s:languageservers[lsp] = config | endif
endfor

if !empty(s:languageservers)
  call coc#config('languageserver', s:languageservers)
  endif
