set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.config/nvim/plugged')

Plug 'wikitopian/hardmode'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug '2072/vim-syntax-for-PHP'
Plug 'lumiliet/vim-twig'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'sbdchd/neoformat'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'EdgarPost/vim-gutentags'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

call plug#end()

let g:startify_custom_header = ['']
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_change_to_dir = 0
let g:startify_bookmarks = [ {'n': '~/.config/nvim/init.vim'}, {'z': '~/.zshrc'}, {'t': '~/.tmux.conf'} ]
let g:startify_list_order = [
            \ ['   Recent files'],
            \ 'dir',
            \ ['   Sessions'],
            \ 'sessions',
            \ ['   Bookmarks:'],
            \ 'bookmarks',
            \ ['   Commands:'],
            \ 'commands',
            \ ]

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

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

noremap ; :
" Open NeoVim settings macOS style (<leader> + ,)
noremap <leader>, :tabnew ~/.config/nvim/init.vim<CR>
" noremap <leader>,r :so ~/.config/nvim/init.vim<CR>

noremap <leader>hh :Startify<CR>

noremap <leader>nt :NERDTreeFocus<CR>
noremap <leader>nc :NERDTreeClose<CR>
noremap <leader>nl :NERDTreeFind<CR>

noremap <leader>fo :FZF<CR>
noremap <leader>fh :History<CR>
noremap <leader>fu :UndotreeToggle<CR>

noremap <leader>tt :tabnew<CR>
noremap <leader>tn :tabNext<CR>

tnoremap <Leader><Leader> <C-\><C-n>
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif
 
set splitbelow
set splitright

autocmd BufWritePre * Neoformat

let g:neoformat_php_php_cs_fixer = {
           \ 'exe': 'php-cs-fixer',
           \ 'args': ['fix', '-q', '--rules=@Symfony'],
           \ 'replace': 1,
           \ }

let g:neoformat_enabled_php = ['php_cs_fixer']

let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

let g:gutentags_cache_dir = '~/.config/nvim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

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

