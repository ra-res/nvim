## What is this?

This is a configuration for Neovim. It's written in Lua, and uses modern
plugins like Treesitter, Telescope, and Lualine.

## Plugins (18/04/2022)

- [packer.nvim](github.com/wbthomason/packer.nvim)
- [telescope.nvim](github.com/nvim-lua/telescope.nvim)
- [vim-test](github.com/janko/vim-test)
- [nvim-tree.lua](github.com/kyazdani42/nvim-tree.lua)
- [undotree](github.com/mbbill/undotree)
- [auto-pairs](github.com/jiangmiao/auto-pairs)
- [vim-surround](github.com/tpope/vim-surround)
- [vim-commentary](github.com/tpope/vim-commentary)
- [vim-vinegar](github.com/tpope/vim-vinegar)
- [project.nvim](github.com/ahmedkhalf/project.nvim)
- [impatient.nvim](github.com/lewis6991/impatient.nvim)
- [bufferline.nvim](github.com/akinsho/bufferline.nvim)
- [vim-bbye](github.com/moll/vim-bbye)
- [toggleterm.nvim](github.com/akinsho/toggleterm.nvim)
- [nvim-cmp](github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](github.com/hrsh7th/cmp-buffer)
- [cmp-path](github.com/hrsh7th/cmp-path)
- [cmp-cmdline](github.com/hrsh7th/cmp-cmdline)
- [cmp_luasnip](github.com/saadparwaiz1/cmp_luasnip)
- [cmp-nvim-lsp](github.com/hrsh7th/cmp-nvim-lsp)
- [LuaSnip](github.com/L3MON4D3/LuaSnip)
- [friendly-snippets](github.com/rafamadriz/friendly-snippets)
- [nvim-lspconfig](github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](github.com/williamboman/nvim-lsp-installer)
- [nlsp-settings.nvim](github.com/tamago324/nlsp-settings.nvim)
- [null-ls.nvim](github.com/jose-elias-alvarez/null-ls.nvim)
- [lsp_signature.nvim](github.com/ray-x/lsp_signature.nvim)
- [vim-fugitive](github.com/tpope/vim-fugitive)
- [gitsigns.nvim](github.com/lewis6991/gitsigns.nvim)
- [nvim-web-devicons](github.com/kyazdani42/nvim-web-devicons)
- [vim-devicons](github.com/ryanoasis/vim-devicons)
- [nvim-treesitter](github.com/nvim-treesitter/nvim-treesitter)
- [lualine.nvim](github.com/hoob3rt/lualine.nvim)
- [darkplus.nvim](github.com/lunarvim/darkplus.nvim)
- [nvim-colorizer.lua](github.com/norcalli/nvim-colorizer.lua)
- [vim-illuminate](github.com/RRethy/vim-illuminate)

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

## coc.nvim

This configuration uses [coc.nvim](https://github.com/neoclide/coc.nvim) for
intellisense.(TODO: use native LSP)

To install coc.nvim LSP:
```
:CocInstall coc-tsserver
```

#### Speed up your keyboard

```
xset r rate 200
```
