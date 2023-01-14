require('edgarpost')

vim.opt.encoding = "utf8"
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.syntax = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 50
vim.opt.softtabstop = 4
vim.opt.backspace = indent,eol,start
vim.opt.autoindent = true
vim.opt.showmatch = true
-- vim.opt.colorcolumn = 100
vim.opt.mouse = "a"
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- vim.opt.noshowmode = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.lazyredraw = true

-- Persist undo
vim.opt.undofile = true
vim.opt.undodir = "~/.vim/undo"

vim.opt.directory = "~/.vim/swap"

vim.g.mapleader = " "

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>,', ':e ~/.config/nvim/lua/init.lua<CR>')
map('n', '<leader><leader>', ':nohlsearch<CR>')
map('n', '<leader>a', ':Telescope commands<CR>')
map('n', '<leader>o', ':Telescope find_files<CR>')
map('n', '<leader>f', ':Telescope live_grep<CR>')
map('n', '<leader>e', ':Telescope oldfiles<CR>')

map('n', '<leader>t', ':Neotree toggle reveal<CR>')
map('n', '<leader>s', ':CocList -I symbols<CR>')

map('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = true, silent = true })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = true, silent = true })

map('n', 'gd', '<Plug>(coc-definition)')
map('n', 'gy', '<Plug>(coc-type-definition)')
map('n', 'gi', '<Plug>(coc-implementation)')
map('n', 'gr', '<Plug>(coc-references)')

map('n', 'gits', ':Git<CR>')
map('n', 'gitb', ':Telescope git_branches<CR>')
map('n', 'gitc', ':Telescope git_bcommits<CR>')
map('n', 'gitbl', ':GitBlameToggle<CR>')

map('n', '<Up>', '<Nop>')
map('n', '<Right>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')

map('v', 'yc', '"*y<ESC>')

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.highlight.create('Normal', { ctermbg = "none", guibg = "none" })
vim.highlight.create('NonText', { ctermbg = "none", guibg = "none" })
vim.highlight.create('EndOfBuffer', { ctermfg = "black", ctermbg = "black" })

vim.opt.updatetime = 100
vim.opt.signcolumn = "yes"












