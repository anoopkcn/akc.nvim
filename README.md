# NeoVIM setup

## Requirements

- NeoVim
- [Nerd Font](https://www.nerdfonts.com/) (optional)
    - Nerdfonts are used for icons in the statusline and other plugins
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) (optional)
    - Ripgrep is used for searching in files, it is faster than the default grep

## NeoVim Plugins

- Basic:
    - lazy.nvim (plugin manager)
    - onedark.nvim (colorscheme)
    - lualine (statusline)
    - telescope.nvim (fuzzy finder)
    - fugitive (git integration)
    - gitsigns (gutter git signs)
    - surround.nvim (surround text objects)
- Language:
    - nvim-lspconfig (language server protocol configuration)
    - treesitter (syntax highlighting)
    - copilot.nvim (snippet completion)
- Disabled:
    - nord.nvim (colorscheme)
    - harpoon (project navigation)
