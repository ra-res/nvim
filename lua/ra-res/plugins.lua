local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
local is_first_time = false
-- Bootstrap packer.nvim - auto install on first-time setup
if fn.empty(fn.glob(install_path)) > 0 then
  vim.cmd('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  is_first_time = true
end

vim.cmd 'packadd packer.nvim'
local packer = require 'packer'

packer.init {
  compile_path = vim.fn.stdpath('data') .. '/packer_compiled.lua',
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  }
}

packer.startup(function(use)
  -- packer.nvim self-care
  use { 'wbthomason/packer.nvim', opt = true }

  -- Telescope
  use { 'nvim-lua/telescope.nvim', requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' } }

  -- Core
  use 'janko/vim-test'
  -- use 'preservim/nerdtree'
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use 'mbbill/undotree'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-vinegar'
  -- use 'airblade/vim-rooter'
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  -- use { 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons' }
  use "moll/vim-bbye"
  use "akinsho/toggleterm.nvim"
  use "matbme/JABS.nvim" -- buffers
  use "karb94/neoscroll.nvim"
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
  use { 'goolord/alpha-nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- Coc
  -- use {'neoclide/coc.nvim', branch = 'release'}
  -- use 'neoclide/coc-jest'

  -- Cmp
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp" -- lsp completions

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "ray-x/lsp_signature.nvim"
  -- use "glepnir/lspsaga.nvim"
  use "b0o/SchemaStore.nvim"

  -- Git
  use 'tpope/vim-fugitive'
  use "lewis6991/gitsigns.nvim"

  -- Theme/Syntax
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use "lunarvim/darkplus.nvim"
  -- use 'eddyekofo94/gruvbox-flat.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use "RRethy/vim-illuminate"

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { "p00f/nvim-ts-rainbow" }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "windwp/nvim-ts-autotag"
  use "romgrk/nvim-treesitter-context"
end)

if is_first_time then
  vim.cmd('PackerInstall')
end
