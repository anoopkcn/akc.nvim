# NeoVIM setup

## Requirements

- NeoVim
- [Nerd Font](https://www.nerdfonts.com/) (optional)
    - Nerdfonts are used for icons in the statusline and other plugins
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) (optional)
    - Ripgrep is used for searching in files, it is faster than the default grep

## NeoVim Plugins

- Basic:
    - [lazy.nvim](https://github.com/folke/lazy.nvim.git) (plugin manager)
    - [onedark.nvim](https://github.com/joshdick/onedark.vim) (colorscheme)
    - [lualine](https://github.com/nvim-lualine/lualine.nvim) (statusline)
    - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (fuzzy finder)
    - [fugitive](https://github.com/tpope/vim-fugitive) (git integration)
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim) (gutter git signs)
    - [surround.nvim](https://github.com/kylechui/nvim-surround) (surround text objects)
    - [vim-unimpaired](https://github.com/tpope/vim-unimpaired) (pairs of mappings with `[` and `]` prepend)
- Language:
    - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (language server protocol configuration)
    - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting)
    - [copilot.nvim](https://github.com/github/copilot.vim) (snippet completion)
- Disabled:
    - [nord.nvim](https://github.com/shaunsingh/nord.nvim) (colorscheme)
