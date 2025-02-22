vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local os_name = jit.os

-- python path setting
if os_name == "Windows_NT" then
  -- vim.g.python3_host_prog = os.getenv("LOCALAPPDATA") .. "\\Microsoft\\WindowsApps\\python3.exe"
  vim.g.python3_host_prog = os.getenv("LOCALAPPDATA") .. "\\Programs\\Python\\Python313\\python.exe"
elseif os_name == "OSX" then
  vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
end

