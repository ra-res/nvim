-- ====================================================================================
-- Initialize
-- ====================================================================================

vim.g.mapleader = ','

vim.g['test#strategy'] = 'neovim'
vim.g['test#neovim#term_position'] = 'vertical'
vim.g['test#javascript#jest#options'] = '--watch'

-- ====================================================================================
-- Autocmds
-- ====================================================================================

vim.cmd 'augroup colorscheme_opts'
vim.cmd 'au!'
vim.cmd 'au ColorScheme * hi Normal guibg=#282828'
vim.cmd 'au ColorScheme * hi SignColumn guibg=NONE'
vim.cmd 'au ColorScheme * hi CursorColumn guibg=#404040'
vim.cmd 'au ColorScheme * hi CursorLine guibg=#404040'
vim.cmd 'au ColorScheme * hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow'
vim.cmd 'au ColorScheme * hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE'

-- -- Float borders
-- vim.cmd 'au ColorScheme * hi NormalFloat guibg=NONE'
-- vim.cmd 'au ColorScheme * hi FloatBorder guibg=NONE guifg=#eeeeee'
-- vim.cmd 'au ColorScheme * hi ErrorFloat guibg=NONE'
-- vim.cmd 'au ColorScheme * hi WarningFloat guibg=NONE'
-- vim.cmd 'au ColorScheme * hi InfoFloat guibg=NONE'
-- vim.cmd 'au ColorScheme * hi HintFloat guibg=NONE'
vim.cmd 'augroup END'
vim.cmd 'au FocusGained,BufEnter * :silent! !'
-- ====================================================================================
-- Theme
-- ====================================================================================
vim.opt.termguicolors = true
-- vim.g.gruvbox_flat_style = "dark"

-- Safely call command to set colorscheme
-- but do not stop execution
local colorscheme_cmd = 'colorscheme gruvbox-flat'
local success, err = pcall(vim.cmd, colorscheme_cmd)
if not success then
  vim.api.nvim_err_writeln(err)
  vim.cmd[[colorscheme desert]]
  vim.cmd[[set background=dark]]
end

-- ====================================================================================
-- Options
-- ====================================================================================

vim.opt.errorbells = false
vim.opt.autoread = true 
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('data') .. '/undodir'
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.hidden = true
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.shortmess:append('c')
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = 'yes'
vim.opt.wrap = true
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.laststatus = 2
vim.opt.scrolloff = 5
vim.opt.showtabline = 2
vim.opt.ttimeoutlen = 50
vim.opt.ignorecase = true
vim.opt.wildignorecase = true
vim.opt.smarttab = true
vim.opt.mouse = 'a';
vim.opt.encoding = 'utf-8';
vim.opt.ttyfast = true;
vim.opt.lazyredraw = true;

require 'ra-res'
