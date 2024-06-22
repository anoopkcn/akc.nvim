return { 
	"neovim/nvim-lspconfig",
	 dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		require('mason').setup()
		require('mason-lspconfig').setup {
			ensure_installed = { "pyright", "lua_ls", "rust_analyzer", "tsserver" },
		}
		require("lspconfig").pyright.setup {
			capabilities = capabilities,
		}
		require("lspconfig").rust_analyzer.setup {
			capabilities = capabilities,
		}
		require("lspconfig").tsserver.setup {
			capabilities = capabilities,
		}
	end
}
