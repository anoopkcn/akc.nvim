# NeoVim setup
Philosophy: 
- If you can't explain it, *you don't need it.*
- If it becomes a chore to maintain, *you don't need it.*
- If you have to lookup how it works more than once, *you don't need it.*

## Requirements
- [NeoVim](https://neovim.io) (>= 0.10)
    - Editor you need. *One can edit without it but not as contentedly.*
- [Nerd Font](https://www.nerdfonts.com/) (optional)
    - Nerdfonts are used for icons. *Everything should work without it but not as pretty.*
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) (optional)
    - Ripgrep is used for searching in files, it is faster than the default grep. *Everything should work without it but not as fast.*

## Folder Structure
.
├── README.md
├── init.lua
└── lua
    ├── keymaps.lua
    ├── lazyinit.lua
    ├── options.lua
    └── plugins
        └──*.lua

 [lazy.nvim](https://github.com/folke/lazy.nvim.git) plugin is used as the package manager and it is initialised with the following in the `lazyinit.lua` file.
```lua
require("lazy").setup({ { import = "plugins" } })
```
All plugin specific configuration is stored in the `lua/plugins` folder. They are imported because of the `import="<foldername>"` configuration without the need to add individual item explicitly in the `lazy` configuration.

## NeoVim Plugins
- Plugin Manager:
    - [lazy.nvim](https://github.com/folke/lazy.nvim.git) (plugin manager)

- Utility plugins:
    - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (fuzzy finder)
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim) (gutter git signs)
    - [fugitive](https://github.com/tpope/vim-fugitive) (git integration)
    - [surround.nvim](https://github.com/kylechui/nvim-surround) (surround text objects)
    - [vim-unimpaired](https://github.com/tpope/vim-unimpaired) (pairs of mappings with `[` and `]` prepend)
    - [harpoon](https://github.com/ThePrimeagen/harpoon) (project navigation/ buffer management)

- Theme plugins:
    - [onedark.nvim](https://github.com/joshdick/onedark.vim) (colorscheme)
    - [lualine](https://github.com/nvim-lualine/lualine.nvim) (statusline)

- Setup and hopefully Forget plugins:
    - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (language server protocol configuration)
    - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (syntax highlighting)
    - [copilot.nvim](https://github.com/github/copilot.vim) (snippet completion)
    - [conforms.nvim](https://github.com/stevearc/conform.nvim) (autoformatting)

- Disabled:
    - [nord.nvim](https://github.com/shaunsingh/nord.nvim) (colorscheme)

