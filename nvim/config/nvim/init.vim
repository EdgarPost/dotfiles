set encoding=utf-8
scriptencoding utf-8

" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:loaded_python_provider = 1

call plug#begin('~/.config/nvim/plugged')

Plug 'wikitopian/hardmode'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'shawncplus/phpcomplete.vim'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
" Plug 'stephpy/vim-php-cs-fixer'
Plug 'sbdchd/neoformat'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script  arse-stubs'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-completion-manager'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composeu install' }
" Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:startify_custom_header = [
            \ '  _____     _____   _             _____     ',
            \ ' |     |___|   __|_| |___ ___ ___|  _  |    ',
            \ ' | | | |  _|   __| . | . | . |  _|   __|    ',
            \ ' |_|_|_|_| |_____|___|_  |__,|_| |__|       ',
            \ '                     |___|                  ',
            \ ]


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
set scrolloff=10
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set incsearch
set hlsearch

set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Don't use those arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" noremap H 0
" noremap L $
" noremap J 5j
" noremap K 5k
noremap ; :

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
let g:airline_powerline_fonts = 1

" Deoplete config
let g:deoplete#enable_at_startup = 1
" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
" let g:deoplete#ignore_sources.php = ['omni']

let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"

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


