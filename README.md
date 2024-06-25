# NeoVim setup

Philosophy:

- If you can't explain it, *you don't need it.*
- If it becomes a chore to maintain, *you don't need it.*
- If you have to lookup how it works more than once, *you don't need it.*

## Requirements

- [NeoVim](https://neovim.io) (>= 0.10)
  - Editor you need. *One can edit without it but not as contentedly.*

## Optional Requirements

- [Nerd Font](https://www.nerdfonts.com/)
  - Nerdfonts are used for icons. *Everything should work without it but not as pretty.*
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
  - Ripgrep is used for searching in files, it is faster than the default grep. *Everything should work without it but not as fast.*

## Folder Structure

```bash
.
├── README.md
├── init.lua
└── lua
    ├── core
    │   └── *.lua
    ├── colors
    │   └── *.lua
    └── plugins
        └── *.lua
```

[lazy.nvim](https://github.com/folke/lazy.nvim.git) plugin is used as the package manager and it is initialised with the following in the `init.lua` file.

All plugin specific configurations are stored in the `lua/plugins` directory. All color/theme related configurations are stored in the `lua/colors` directory.

## NeoVim Plugins

- Plugin Manager:

  - [lazy.nvim](https://github.com/folke/lazy.nvim.git) (plugin manager)

- Setup and hopefully Forget plugins:

  - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting)
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (language server protocol configuration)
  - [conforms.nvim](https://github.com/stevearc/conform.nvim) (auto-formatting)
  - [copilot.nvim](https://github.com/github/copilot.vim) (code generation and completion)

- Utility plugins:

  - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (fuzzy finder)
  - [gitsigns](https://github.com/lewis6991/gitsigns.nvim) (gutter git signs)
  - [fugitive](https://github.com/tpope/vim-fugitive) (git integration)
  - [surround.nvim](https://github.com/kylechui/nvim-surround) (surround text objects)
  - [vim-unimpaired](https://github.com/tpope/vim-unimpaired) (pairs of mappings with `[` and `]` prepend)
  - [harpoon](https://github.com/ThePrimeagen/harpoon) (project navigation/ buffer management)
  - [mason](https://github.com/williamboman/mason.nvim)(lsp, dap, linter, formatter manager)
  - [trouble.nvim](https://github.com/folke/trouble.nvim) (quickfix list and location list)

- Theme plugins:

  - [github](https://github.com/projekt0n/github-nvim-theme) (colorscheme)
  - [lualine](https://github.com/nvim-lualine/lualine.nvim) (statusline)
  - [onedark.nvim](https://github.com/joshdick/onedark.vim) (colorscheme) \[DISABLED\]
