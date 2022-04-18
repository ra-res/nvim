## What is this?

This is a configuration for Neovim. It's written in Lua, and uses modern
plugins like Treesitter, Telescope, and Lualine.

## Plugins (18/04/2022)

- [Packer](https://github.com/wbthomason/packer.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Plenary](https://github.com/nvim-lua/plenary.nvim)
- [Vim Test](https://github.com/janko/vim-test)
- [Nvim Tree](https://github.com/kyazdani42/nvim-tree.lua)
- [Undo Tree](https://github.com/mbbill/undotree)
- [Commentary](https://github.com/tpope/vim-commentary)
- [Surround](https://github.com/tpope/vim-surround)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [Vinegar](https://github.com/tpope/vim-vinegar)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [coc-jest](https://github.com/neoclide/coc-jest)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [Impatient](https://github.com/lewis6991/impatient.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [vim-bbye](https://github.com/moll/vim-bbye)
- [Toggleterm](https://github.com/akinsho/toggleterm.nvim)
- [gruvbox-flat](https://github.com/eddyekofo94/gruvbox-flat.nvim)
- [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)

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
- [nerdfonts](nerdfonts.com)
    - `brew tap homebrew/cask-fonts && brew install --cask font-code-new-roman-nerd-font`

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
