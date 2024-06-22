-- https://github.com/nvim-telescope/telescope.nvim
return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules", "env", "venv", ".env" },
			},
		})
		local builtin = require("telescope.builtin")
		-- file related
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>fj", builtin.jumplist, {})
		vim.keymap.set("n", "<leader>fr", builtin.registers, {})
		vim.keymap.set("n", "<leader>fm", builtin.marks, {})
		-- git related
		-- vim.keymap.set("n", "<leader>gs", builtin.git_status, {}) -- This is handled by Fugitive
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
		vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
		vim.keymap.set("n", "<leader>gl", builtin.git_bcommits, {})
		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim files" })
	end,
}
