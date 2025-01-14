
-- disable netrw for nvim-tree
vim.api.nvim_set_var('loaded_netrw', 1)
vim.api.nvim_set_var('loaded_netrwPlugin', 1)

require('core.command')
require('core.global')
require('core.options')
require('core.keymaps')
require('config.lazy')



