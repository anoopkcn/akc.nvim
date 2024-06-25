return {
	"hrsh7th/nvim-cmp",  -- https://github.com/hrsh7th/nvim-cmp
	dependencies = {
		"hrsh7th/cmp-path", -- https://github.com/hrsh7th/cmp-path
		"hrsh7th/cmp-buffer", -- https://github.com/hrsh7th/cmp-buffer
		"onsails/lspkind.nvim" -- https://github.com/onsails/lspkind.nvim
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require('lspkind')

		-- reset some behaviors
		vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

		-- autocomplete setup
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		cmp.setup({
			enabled = true,
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			-- load sources for autocomplete that is from buffers and lsp servers
			sources = {
				{ name = "nvim_lsp", group_index = 2 },
				{ name = "buffer",   group_index = 2, keyword_length = 3 },
				{ name = "path",     group_index = 2 },
				{ name = "copilot",  group_index = 2 }
			},
			window = {
				documentation = cmp.config.window.bordered()
			},
			formatting = {
				format = lspkind.cmp_format({
					mode = 'symbol',
					maxwidth = 50,
					show_labelDetails = true,
					menu = ({
						nvim_lsp = "[LSP]",
						buffer = "[Buff]",
						path = "[Path]",
						copilot = "[Copi]",
					})
				})
			},

		})
	end,
}
