-- https://github.com/nvim-lualine/lualine.nvim
return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			sections = {
				lualine_a = {},
				lualine_b = { "mode" },
				lualine_c = { "filename", "searchcount" },
				lualine_x = { "diagnostics", "encoding", "filetype", "progress" }, --  "encoding", "fileformat"
				lualine_y = { "location" },
				lualine_z = {},
			},
			tabline = {
				lualine_a = {
					{
						"buffers",
					},
				},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "diff", "branch", "fileformat" },
				lualine_z = {},
			},
		})
	end,
}
