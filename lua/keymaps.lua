-- Leader key (must be set before lazy.nvim loads)
vim.g.mapleader = " "

-- Editor options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.o.mouse = 'a'

-- Core keymaps
vim.keymap.set('n', '<leader>r', '<C-r>', { noremap = true, silent = true, desc = "Redo" })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
