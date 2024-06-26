-- Confuration for LSP (Language Server Protocol) and Manager(Mason)
local servers = {
	pyright = {},
	rust_analyzer = {},
	lua_ls = {
		-- capabilities = {},
		settings = {
			Lua = {
				completion = {
					callSnippet = "Replace",
				},
				diagnostics = {
					globals = { "vim" },
					-- disable = { 'missing-fields' }
				},
			},
		},
	},
	-- tsserver = {},
}

local lang_tools = {
	"stylua", -- Used to format Lua code
	"black", -- Used to format Python code
}

return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim", -- https://github.com/williamboman/mason.nvim
		"williamboman/mason-lspconfig.nvim", -- https://github.com/williamboman/mason-lspconfig.nvim
		"WhoIsSethDaniel/mason-tool-installer.nvim", -- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
		"hrsh7th/cmp-nvim-lsp", -- https://github.com/hrsh7th/cmp-nvim-lsp
	},

	config = function()
		require("mason").setup()

		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, lang_tools)

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		-- combine the default capabilities with the nvim-cmp capabilities
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			desc = "LSP actions",
			callback = function()
				local _map = function(mode, lhs, rhs)
					local opts = { buffer = true }
					vim.keymap.set(mode, lhs, rhs, opts)
				end

				-- Displays hover information about the symbol under the cursor
				_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

				-- Jump to the definition
				_map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")

				-- Jump to declaration
				_map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")

				-- Lists all the references
				_map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")

				-- Renames all references to the symbol under the cursor
				_map("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")
			end,
		})

		-- lsp symbol definition window(activated by K) should have border and rounded corner
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
		})
	end,
}
