vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")
vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>") -- remove search highlight on escape
vim.keymap.set("n", "<leader>bd", "<Cmd>bd<CR>")    -- close buffer
vim.keymap.set({ "n", "v" }, "G", "Gzz")            -- keep cursor at center when navigating to the end of the file
