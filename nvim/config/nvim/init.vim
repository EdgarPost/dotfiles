set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.config/nvim/plugged')

Plug 'wikitopian/hardmode'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'jacoborus/tender.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'sbdchd/neoformat'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

call plug#end()

let g:startify_custom_header = ['']

" General config
syntax enable
:let mapleader = "\<space>"
set background=dark
colorscheme solarized
set lazyredraw
set number
set relativenumber
set cursorline
" set cursorcolumn
set scrolloff=10
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set nowrap
set colorcolumn=120
set incsearch
set hlsearch
set ignorecase
set smartcase
set listchars=tab:>.,trail:.,extends:#,nbsp:.

noremap ; :
" Open NeoVim settings macOS style (<leader> + ,)
noremap <leader>, :tabnew ~/.config/nvim/init.vim<CR>
" noremap <leader>,r :so ~/.config/nvim/init.vim<CR>

noremap <leader>hh :Startify<CR>

noremap <leader>nt :NERDTreeFocus<CR>
noremap <leader>nc :NERDTreeClose<CR>
noremap <leader>ns :NERDTreeFind<CR>

noremap <leader>fo :FZF<CR>
noremap <leader>fh :History<CR>
noremap <leader>fu :UndotreeToggle<CR>

noremap <leader>tt :tabnew<CR>
noremap <leader>tn :tabNext<CR>

tnoremap <Leader><Leader> <C-\><C-n>
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif
 
set splitbelow
set splitright
" noremap <C-h> <C-w>h
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-l> <C-w>l

" autocmd BufWritePre * Neoformat

" let g:neoformat_php_php_cs_fixer = {
"             \ 'exe': 'php-cs-fixer',
"             \ 'args': ['--rules=@Symfony'],
"             \ }
" 
" let g:neoformat_enabled_php = ['php_cs_fixer']

let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
 
let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"

" Persist until infinity
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

