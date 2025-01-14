
-- show line number
vim.opt.number = true;

-- enable resizing window with mouse
vim.opt.mouse = 'a'

-- use OS clipboard
-- this setting is heavy to enable, and setting async
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- indent folding sentence
vim.opt.breakindent = true

-- permament undo history
vim.opt.undofile = true

-- TODO: search case option 


-- NEED SEARCH:
-- Keep signcolumn on bu default
vim.opt.signcolumn = 'yes'

-- udpate time
vim.opt.updatetime = 250

-- wait next type for command
vim.opt.timeoutlen = 300

-- new window location
vim.opt.splitright = true
vim.opt.splitbelow = true

-- show unvisible characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- hilight current line
vim.opt. cursorline = true

-- preview command effect
vim.opt.inccommand = 'split'

-- show line around cursor
vim.opt.scrolloff = 10


