
-- Telescope
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg',  "<cmd>Telescope live_grep<cr>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb',  "<cmd>Telescope buffers<cr>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh',   "<cmd>Telescope lsp_references<cr>", { desc = 'Telescope help tags' })
