set encoding=utf-8
scriptencoding utf-8

" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:loaded_python_provider = 1

call plug#begin('~/.config/nvim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'shawncplus/phpcomplete.vim'
" Plug 'stephpy/vim-php-cs-fixer'
Plug 'sbdchd/neoformat'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/nvim-completion-manager'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

call plug#end()

" General config
syntax enable
:let mapleader = "\<space>"
set background=dark
if (has("termguicolors"))
     set termguicolors
 endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme tender
set number
set relativenumber
set cursorline
set cursorcolumn
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Don't use those arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

map <leader>vc :so ~/.config/nvim/init.vim<CR>

map <leader>ft :NERDTreeToggle<CR>

map <leader>sf :FZF<CR>
map <leader>sh :History<CR>

map <leader>bw :w<CR> " Write current buffer
map <leader>bq :q<CR> " Quit current buffer

map <leader>w <C-W>
map <leader>ws :split
map <leader>wsv :vsplit<CR>

" map <leader>pi :PlugInstall<CR>
" map <leader>pc :PlugClean<CR>
" map <leader>pur :UpdateRemotePlugins<CR>

let g:airline_theme='tender'

" Deoplete config
let g:deoplete#enable_at_startup = 1
" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
" let g:deoplete#ignore_sources.php = ['omni']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" LSP config
" Required for operations modifying multiple buffers like rename.
" set hidden
" autocmd FileType php LanguageClientStart


