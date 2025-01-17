vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local os_name = vim.loop.os_uname().sysname

-- python path setting
if os_name == "Windows_NT" then
  -- vim.g.python3_host_prog = os.getenv("LOCALAPPDATA") .. "\\Microsoft\\WindowsApps\\python3.exe"
  vim.g.python3_host_prog = 'C:/Users/watanabe.h/AppData/Local/'
  print(vim.g.python3_host_prog)
end

