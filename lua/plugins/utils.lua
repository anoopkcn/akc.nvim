return {
	{
		"tpope/vim-unimpaired",
		enabled = true,
	},
	{
		"tpope/vim-sleuth",
		enabled = true,
	},
	{
		"tpope/vim-repeat",
		enabled = true,
	},
	{
		"tpope/vim-fugitive",
		enabled = true,
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		end,
	},
	{
		"echasnovski/mini.ai",
		version = "*",
		enabled = true,
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		"echasnovski/mini.surround",
		version = "*",
		enabled = true,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		version = "*",
		enabled = true,
		config = function()
			require("mini.pairs").setup({
				modes = { insert = true, command = false, terminal = false },
			})
		end,
	},
}
