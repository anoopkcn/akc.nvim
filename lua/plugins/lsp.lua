-- Confuration for LSP (Language Server Protocol) and autocomplete plugin
-- They dont need to be connected but LSP capbilities are used in autocomplete
return {
	"neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
	dependencies = {
		-- Autocomplete Plugin:
		"hrsh7th/nvim-cmp", -- https://github.com/hrsh7th/nvim-cmp
		"hrsh7th/cmp-nvim-lsp", -- https://github.com/hrsh7th/cmp-nvim-lsp
		"hrsh7th/cmp-path", -- https://github.com/hrsh7th/cmp-path
		"hrsh7th/cmp-buffer", -- https://github.com/hrsh7th/cmp-buffer
		"hrsh7th/cmp-cmdline", -- https://github.com/hrsh7th/cmp-cmdline
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")

		-- combine the default capabilities with the nvim-cmp capabilities
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(), -- default capabilities
			cmp_lsp.default_capabilities() -- nvim-cmp capabilities
		)

		-- lspconfig setup for each language server
		lspconfig["pyright"].setup({ capabilities = capabilities })
		lspconfig["rust_analyzer"].setup({ capabilities = capabilities })
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { "vim" },
					},
				},
			},
		})

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
			sources = cmp.config.sources({ { name = "nvim_lsp" } }, { { name = "buffer" } }, { { name = "path" } }),
		})

		-- autocomplete for search
		-- `/` cmdline setup.
		cmp.setup.cmdline("/", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})
	end,
}
