vim.g.mapleader = ' '				-- set <Space> as leader key
vim.g.maplocalleader = ' '			-- set <Space> as local leader key
vim.g.have_nerd_font = true			-- set to true if you have nerd-font varient is installed

vim.opt.number = true				-- set line number
vim.opt.mouse = 'a'				-- enable mouse mode, useful in select cases
vim.opt.showmode = false			-- mode is already shown in the status line
vim.opt.cursorline = true 			-- highlight current cursorline
vim.opt.ttyfast = true				-- speed up scrolling in Vim
vim.opt.clipboard = 'unnamedplus'		-- combine OS clipboard with nvim clipboard
vim.opt.ignorecase = true			-- case insensitive search
vim.opt.hlsearch = true				-- highlight on search
vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<cr>')	-- remove search highlight on escape


