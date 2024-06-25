-- Confuration for LSP (Language Server Protocol) and Manager(Mason)
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim", -- https://github.com/williamboman/mason.nvim
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp", -- https://github.com/hrsh7th/cmp-nvim-lsp
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_lsp = require("cmp_nvim_lsp")

		mason.setup()
		mason_lspconfig.setup(
			{
				ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
			}
		)

		-- combine the default capabilities with the nvim-cmp capabilities
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(), -- default capabilities
			cmp_lsp.default_capabilities()      -- nvim-cmp capabilities
		)

		-- lspconfig setup for each language server
		lspconfig["pyright"].setup({ capabilities = capabilities })
		lspconfig["rust_analyzer"].setup({ capabilities = capabilities })
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
}
