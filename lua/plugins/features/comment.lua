return {
  "numToStr/Comment.nvim",
  keys = {
    { "gcc", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", desc = "Toggle comment for current line" },
    { "gc", "<cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", mode = "v", desc = "Toggle comment for selected lines" },
    { "gcu", "<cmd>lua require('Comment.api').unlock_linewise()<CR>", desc = "Unlock current line" },
  },
  config = function()
    require("Comment").setup {
      -- ======= コメント設定 =======
      padding = true,  -- コメントの前にスペースを追加
      sticky = true,   -- 複数行コメントを連携して保持
      ignore = nil,    -- 特定のファイルタイプでコメントを無視（例: ignore = "^Telescope" など）

      -- ======= 自動的に行単位でコメント =======
      toggler = {
        line = "gcc",  -- `gcc` で行単位コメントのオン/オフ
      },

      -- ======= 視覚モードの設定 =======
      opleader = {
        line = "gc",  -- `gc` で視覚モードの行単位コメント
        block = "gb", -- `gb` で視覚モードのブロックコメント
      },

      -- ======= キーマッピング =======
      mappings = {
        basic = true,  -- 基本的なキー設定を有効にする
        extra = true,  -- 追加のマッピングを有効にする
        extended = true, -- 拡張機能（行コメント、ブロックコメント）を有効にする
      },

      -- ======= 追加設定 =======
      pre_hook = nil, -- コメント前に実行するフック関数
      post_hook = nil, -- コメント後に実行するフック関数
    }
  end
}
