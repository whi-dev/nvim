return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").clangd.setup({
      cmd = { "clangd", "--background-index" },
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
  end
}
