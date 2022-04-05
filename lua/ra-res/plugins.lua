local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local is_first_time = false

-- Bootstrap packer.nvim - auto install on first-time setup
if fn.empty(fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  is_first_time = true
end

vim.cmd 'packadd packer.nvim'
local packer = require 'packer'

packer.init {
  compile_path = vim.fn.stdpath('data') .. '/packer_compiled.lua',
}

packer.startup(function(use)
  -- packer.nvim self-care
  use { 'wbthomason/packer.nvim', opt = true }

  -- Telescope
  use { 'nvim-lua/telescope.nvim', requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' } }

  -- Core
  use 'janko/vim-test'
  use 'preservim/nerdtree'
  use 'mbbill/undotree'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-vinegar'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'neoclide/coc-jest'
  use 'airblade/vim-rooter'

  -- Theme/Syntax
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
  use 'itchyny/lightline.vim'
  use 'morhetz/gruvbox' 
end)

if is_first_time then
  vim.cmd('PackerInstall')
end