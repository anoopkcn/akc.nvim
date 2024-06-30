return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({ ---@diagnostic disable-line: missing-fields
			textobjects = {
				select = {
					enable = true,
					-- Automatically jump forward to textobj, similar to targets.vim
					lookahead = true,
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["aa"] = { query = "@parameter.outer" },
						["ia"] = { query = "@parameter.inner" },

						["ai"] = { query = "@conditional.outer" },
						["ii"] = { query = "@conditional.inner" },

						["al"] = { query = "@loop.outer" },
						["il"] = { query = "@loop.inner" },

						["af"] = { query = "@call.outer" },
						["if"] = { query = "@call.inner" },

						["am"] = { query = "@function.outer" },
						["im"] = { query = "@function.inner" },

						["ac"] = { query = "@class.outer" },
						["ic"] = { query = "@class.inner" },
					},
				},
			},
		})
	end,
}
