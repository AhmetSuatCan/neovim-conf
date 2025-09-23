vim.opt.number = true
vim.opt.relativenumber = true -- show relative numbers on other lines
vim.opt.wrap = false            -- Disable line wrapping
vim.opt.tabstop = 4             -- Set tab width to 4 spaces
vim.opt.shiftwidth = 4          -- Indentation width to 4 spaces
vim.opt.expandtab = true        -- Convert tabs to spaces
vim.opt.smartindent = true      -- Enable smart indentation
vim.opt.hlsearch = false       -- Disable highlight of search results
vim.opt.incsearch = true       -- Enable incremental search
vim.o.mouse = 'a'
vim.g.mapleader = " "



--re-do keymap
vim.api.nvim_set_keymap('n', '<leader>r', '<C-r>', { noremap = true, silent = true })


--Gitsigns Keymaps:
vim.api.nvim_set_keymap('n', '<leader>gp', ':Gitsigns preview_hunk<CR>',{})


--Telescope Keymaps
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" }) -- Search for files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live Grep" }) -- Search for text in files


--Format Python Files
vim.keymap.set("n", "<leader>m", function()

vim.lsp.buf.format()

end)
