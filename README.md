# NeoVim setup
Phylosophy: 

- keep it small but it doesn't have to be simple
- If you have to check how a plugin works, when you use it, you don't need that plugin.
- Setup and forget plugins are awesome as long as you forget about them. 

## Requirements

- [ NeoVim ](https://neovim.io) (>= 0.10)
    - Neovim is the editor
- [Nerd Font](https://www.nerdfonts.com/) (optional)
    - Nerdfonts are used for icons in the statusline and other plugins
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) (optional)
    - Ripgrep is used for searching in files, it is faster than the default grep

## NeoVim Plugins

- Plugin Manager:
    - [lazy.nvim](https://github.com/folke/lazy.nvim.git) (plugin manager)

- Utility plugins:
    - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (fuzzy finder)
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim) (gutter git signs)
    - [fugitive](https://github.com/tpope/vim-fugitive) (git integration)
    - [surround.nvim](https://github.com/kylechui/nvim-surround) (surround text objects)
    - [vim-unimpaired](https://github.com/tpope/vim-unimpaired) (pairs of mappings with `[` and `]` prepend)

- Theme plugins:
    - [onedark.nvim](https://github.com/joshdick/onedark.vim) (colorscheme)
    - [lualine](https://github.com/nvim-lualine/lualine.nvim) (statusline)

- Setup and Forget plugins:
    - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (language server protocol configuration)
    - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting)
    - [copilot.nvim](https://github.com/github/copilot.vim) (snippet completion)

- Disabled:
    - [nord.nvim](https://github.com/shaunsingh/nord.nvim) (colorscheme)
