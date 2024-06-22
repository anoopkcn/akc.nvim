-- https://github.com/neovim/nvim-lspconfig
-- LSP Server Manager
-- https://github.com/williamboman/mason.nvim,
-- https://github.com/williamboman/mason-lspconfig.nvim,
-- Autocomplete Plugin:
-- https://github.com/hrsh7th/nvim-cmp,
-- https://github.com/hrsh7th/cmp-nvim-lsp,
-- https://github.com/hrsh7th/cmp-path,
-- https://github.com/hrsh7th/cmp-buffer,
-- https://github.com/hrsh7th/cmp-cmdline,
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")

		-- init mason and mason-lspconfig LSP, and formatter manager
		mason.setup()
		mason_lspconfig.setup({
			ensure_installed = { "pyright", "lua_ls", "rust_analyzer", "tsserver" },
		})

		-- combine the default capabilities with the capabilities of the nvim-cmp
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(), -- default capabilities
			cmp_lsp.default_capabilities() -- nvim-cmp capabilities
		)

		-- lspconfig setup for each language server
		lspconfig["pyright"].setup({ capabilities = capabilities })
		lspconfig["rust_analyzer"].setup({ capabilities = capabilities })
		lspconfig["tsserver"].setup({ capabilities = capabilities })
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }, -- set vim as global variable oterwise it will show warnings in lua files
					},
				},
			},
		})

		-- autocomplete setup
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		cmp.setup({
			enabled = true, -- enabled by default
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
