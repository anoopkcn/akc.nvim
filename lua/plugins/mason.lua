return {
	-- LSP Server Manager
	"williamboman/mason.nvim", -- https://github.com/williamboman/mason.nvim
	config = function()
		local mason = require("mason")
		-- init mason and mason-lspconfig LSP, and formatter manager
		mason.setup()
	end,
}
