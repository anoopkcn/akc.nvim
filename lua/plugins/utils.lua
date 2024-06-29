return {
	{
		-- [vim-unimpaired](https://github.com/tpope/vim-unimpaired)(sensible `[` and `]` commands)
		"tpope/vim-unimpaired",
		enabled = true,
	},
	{
		-- [vim-surround](https://github.com/tpope/vim-surround)(surround text with pairs)
		"tpope/vim-sleuth",
		enabled = true,
	},
	{
		-- [vim-repeat](https://github.com/tpope/vim-repeat)(repeat motions with dot)
		"tpope/vim-repeat",
		enabled = true,
	},
	{
		-- [vim-fugitive](https://github.com/tpope/vim-fugitive)(best git plugin)
		"tpope/vim-fugitive",
		enabled = true,
		config = function()
			vim.keymap.set("n", "<leader>G", vim.cmd.Git)
		end,
	},
	{
		-- [surround](https://github.com/tpope/vim-surround)(surround motion for pairs)
		"tpope/vim-surround",
	},
	{
		-- [comment.nvim](https://github.com/numToStr/Comment.nvim) (add line/block comments easily)
		"numToStr/Comment.nvim",
		opts = {},
	},
}
