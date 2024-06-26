return {
	"projekt0n/github-nvim-theme",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	enabled = true,
	config = function()
		require("github-theme").setup({
			-- palettes = {
			-- 	github_dark_default = {
			-- 		bg1 = "#000000", -- Black background
			-- 		bg0 = "#1d1d2b", -- Alt backgrounds (floats, statusline, ...)
			-- 	},
			-- },
			-- specs = {},
			-- groups = {},
		})
	end,
}
