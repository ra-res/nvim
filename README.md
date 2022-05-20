## What is this?

This is a configuration for Neovim. It's written in Lua, and uses modern
plugins like Treesitter, Telescope, and Lualine.

## Plugins (08/05/2022)

- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [telescope.nvim](https://github.com/nvim-lua/telescope.nvim)
- [vim-test](https://github.com/janko/vim-test)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [undotree](https://github.com/mbbill/undotree)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-vinegar](https://github.com/tpope/vim-vinegar)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [vim-bbye](https://github.com/moll/vim-bbye)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- [nlsp-settings.nvim](https://github.com/tamago324/nlsp-settings.nvim)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
- [darkplus.nvim](https://github.com/lunarvim/darkplus.nvim)
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)

## Prerequisites

```console
:checkhealth
```

- [Neovim 0.5 or above](https://neovim.io)
    - mac: `brew install nvim --head`
    - linux: `sudo apt-get install neovim`
- [Node.js](https://nodejs.org)
    - mac: `brew install node`
    - linux: `sudo apt install node`
- [pynvim](https://nodejs.org)
    - `pip3 install pynvim`
- [Hack Nerd Font](nerdfonts.com)
    - mac: `brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font`

    - linux: download  `Hack Nerd Font` in your  `~/.fonts` directory and run `fc-cache -fv`

## Setup this nvim config

### 1. Download configuration

#### Clone repository

```console
git clone https://github.com/ra-res/nvim ~/.config/nvim
```

### 2. Install plugins

#### Install Packer

This nvim config uses [Packer](https://github.com/wbthomason/packer.nvim) as its
Neovim plugin manager. Packer will install by itself when loading this config for the first time.

To install the plugins used in this config, open `nvim` and run `:PackerInstall` command.
```console
nvim ~/.config/nvim/init.lua
:PackerInstall
```

#### Speed up your keyboard

```
xset r rate 200
```
