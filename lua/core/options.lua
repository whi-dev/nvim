
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

-- search case option 
vim.opt.ignorecase = true
vim.opt.smartcase = true


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

-- tab to space
vim.opt.expandtab = true

-- indent spaces
vim.opt.shiftwidth = 4

-- tab spaces
vim.opt.tabstop = 4

-- no new line at eol
vim.opt.fixeol = false

-- toggletermのシェルをPOWERSHELLに変更
--https://github.com/akinsho/toggleterm.nvim/wiki/Tips-and-Tricks#using-toggleterm-with-powershell
local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end
