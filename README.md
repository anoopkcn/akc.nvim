# NeoVim setup

Philosophy:

- If you can't explain it, _you don't need it._
- If it becomes a chore to maintain, _you don't need it._
- If you have to lookup how it works more than once, _you don't need it._

## Requirements

- [NeoVim](https://neovim.io) (>= 0.10)
  - Editor you need. _One can edit without it but not as contentedly._

## Optional Requirements

- [Nerd Font](https://www.nerdfonts.com/)
  - Nerdfonts are used for icons. _Everything should work without it but not as pretty._
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
  - Ripgrep is used for searching in files, it is faster than the default grep. _Everything should work without it but not as fast._

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

<!--rg "\[.*\]\(.*\)" | grep "\-\- \[.*\]\(.*\)" | awk -F'\-\-' ' {print "-" $NF}'-->

- [harpoon](https://github.com/ThePrimeagen/harpoon)(buffer navigation)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) (auto-completion)
- [nvm-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)(code highlighting)
- [vim-unimpaired](https://github.com/tpope/vim-unimpaired)(sensible [ and ] commands)
- [vim-surround](https://github.com/tpope/vim-surround)(surround text with pairs)
- [vim-repeat](https://github.com/tpope/vim-repeat)(repeat motions with dot)
- [vim-commentary](https://github.com/tpope/vim-fugitive)(best git plugin)
- [mini.ai](https://github.come/chasnovski/mini.ai)(better `a` and `i`)
- [mini.surround](https://github.com/echasnovski/mini.surround)(surround text with pairs)
- [mini.pair](https://github.com/echasnovski/mini.pair)(surround text with pairs)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)(gutter signs for git)
- [conform.nvim](https://github.com/stevearc/conform.nvim)(auto-formatting)
- [lazy.nvim](https://github.com/folke/lazy.nvim.git) (plugin manager)
- [trouble.nvim](https://github.com/folke/trouble.nvim)(better quick fix list)
- [copilot](https://github.com/zbirenbaum/copilot.lua)(ai auto-completion)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)(multi purpose navigation)
- [oil.nvim](https://github.com/stevearc/oil.nvim)(file explorer)
- [lazy.nvim](https://github.com/folke/lazy.nvim.git)

## Plugin configuration dependancy

- Trouble + Telescope
  - Trouble can recive telescope search results therefore this feature is activated
- lspconfig + nvim-lsp-cmp
  - autocomplete plugin `nvim-cmp` is using lsp results for it's autocompletion
