return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- アイコンを有効にするためのプラグイン
  keys = {
    { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" }, -- Ctrl+n で NvimTree を開閉
    { "<leader>e", "<cmd>NvimTreeFocus<CR>", desc = "Focus NvimTree" }, -- <leader>e で NvimTree にフォーカス
  },
  config = function()
    require("nvim-tree").setup {
      -- ======= 基本設定 =======
      disable_netrw = true,  -- netrw (デフォルトのファイルツリー) を無効化
      hijack_netrw = true,   -- `netrw` の挙動を `nvim-tree` に置き換える
      auto_reload_on_write = true, -- ファイルの変更時にツリーを自動更新

      -- ======= ウィンドウの設定 =======
      view = {
        width = 80,  -- NvimTree の幅
        side = "right",  -- 左側に表示
        preserve_window_proportions = true, -- 他のウィンドウのサイズを保持
      },

      -- ======= 表示のカスタマイズ =======
      renderer = {
        add_trailing = false,  -- ディレクトリの末尾にスラッシュを追加しない
        group_empty = true,  -- 空のフォルダをまとめる
        highlight_git = true,  -- Git ステータスをハイライト
        highlight_opened_files = "name", -- 開いているファイルをハイライト
        icons = {
          git_placement = "after",  -- Git アイコンをファイル名の後に配置
          show = {
            file = true,   -- ファイルのアイコンを表示
            folder = true, -- フォルダのアイコンを表示
            folder_arrow = true, -- フォルダの開閉アイコンを表示
            git = true, -- Git のステータスアイコンを表示
          },
          glyphs = {
            default = "󰈚", -- デフォルトのファイルアイコン
            symlink = "", -- シンボリックリンクのアイコン
            folder = {
              default = "", -- 閉じているフォルダ
              open = "", -- 開いているフォルダ
              empty = "", -- 空のフォルダ
              empty_open = "", -- 空のフォルダ (開いた状態)
              symlink = "", -- シンボリックリンクのフォルダ
            },
            git = {
              unstaged = "✗", -- 変更はあるがステージングされていない
              staged = "✓", -- ステージング済み
              unmerged = "", -- マージコンフリクト
              renamed = "➜", -- ファイル名が変更された
              untracked = "★", -- Git にまだ追加されていないファイル
              deleted = "", -- 削除されたファイル
              ignored = "◌", -- `.gitignore` で無視されているファイル
            },
          },
        },
      },

      -- ======= フィルタリング (特定のファイルを非表示) =======
      filters = {
        dotfiles = false,  -- 隠しファイル (.dotfiles) を表示
      },

      -- ======= Git 関連の設定 =======
      git = {
        enable = true,  -- Git インジケータを有効化
        ignore = false, -- `.gitignore` で無視されているファイルも表示
        timeout = 500, -- Git ステータスの取得タイムアウト（ミリ秒）
      },

      -- ======= アクションの設定 =======
      actions = {
        open_file = {
          quit_on_open = true,  -- ファイルを開いても NvimTree を閉じない
          resize_window = true, -- ファイルを開いた時にウィンドウのサイズを調整
          window_picker = {
            enable = false, -- 複数のウィンドウが開いていても、手動で選択する必要なし
          },
        },
      },

      -- ======= カーソルのあるファイルの同期 =======
      update_focused_file = {
        enable = true,  -- カーソルがあるファイルをツリー上でハイライト
        update_cwd = true,  -- 作業ディレクトリを変更
        ignore_list = {}, -- 無視するパス
      },
    }
  end
}
