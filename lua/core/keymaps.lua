vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")    -- since Space is the leader key do nothing
vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>") -- remove search highlight on escape
