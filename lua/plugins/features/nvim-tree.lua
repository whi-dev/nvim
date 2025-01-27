return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {mode = "n", "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeをトグルする"},
    {mode = "n", "<C-m>", "<cmd>NvimTreeFocus<CR>", desc = "NvimTreeにフォーカス"},
  },
  renderer = {
    hilight_git = true,
    hilight_opened_file = 'name',
    group_empty = true,
  },
  config = function()
    require("nvim-tree").setup {
      git = {
        enable = true,
        ignore = true,
      }
    }
  end,
}
