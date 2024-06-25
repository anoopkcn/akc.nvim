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

		vim.api.nvim_create_autocmd('LspAttach', {
			desc = 'LSP actions',
			callback = function()
				local bufmap = function(mode, lhs, rhs)
					local opts = { buffer = true }
					vim.keymap.set(mode, lhs, rhs, opts)
				end

				-- Displays hover information about the symbol under the cursor
				bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

				-- Jump to the definition
				bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

				-- Jump to declaration
				bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

				-- Lists all the references
				bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

				-- Renames all references to the symbol under the cursor
				bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
			end
		})

		-- lsp symbol definition window(activated by K) should have border and rounded corner
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
		})
	end,
}
