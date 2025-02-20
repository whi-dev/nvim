return {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    -- OR 'ibhagwan/fzf-lua',
    -- OR 'folke/snacks.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("octo").setup({
      -- ======= PR 関連の設定 =======
      issue_command = "gh issue",  -- Issue 関連のコマンドを `gh` で実行

      -- ======= Pull Request のフィルタ設定 =======
      filters = {
        open = true,  -- 開いている PR のみを表示
        closed = false,  -- 閉じた PR を表示しない
      },

      -- ======= プラグイン内の操作をカスタマイズ =======
      mappings = {
        ["<leader>gp"] = "<cmd>Octo pr list<CR>",  -- PR リストを表示するショートカット
        ["<leader>gi"] = "<cmd>Octo issue list<CR>", -- Issue リストを表示するショートカット
        ["<leader>gf"] = "<cmd>Octo pr checkout<CR>",  -- PR をチェックアウトする
        ["<leader>gl"] = "<cmd>Octo pr review<CR>",  -- PR にレビューを送信する
        ["<leader>gs"] = "<cmd>Octo pr merge<CR>",  -- PR をマージする
      },

      -- ======= PR の表示設定 =======
      prs = {
        show_assigned = true,  -- 自分に割り当てられた PR を表示
        show_created = true,  -- 自分が作成した PR を表示
        show_review_requested = true,  -- 自分にレビューがリクエストされた PR を表示
      },

      -- ======= GitHub のコメント機能の設定 =======
      comments = {
        enable = true,  -- コメント機能を有効化
        enable_emoji = true,  -- 絵文字をコメントで使用できるようにする
      },
    })
  end
}
