return {
  "monaqa/dial.nvim",
  keys = {
    { "<C-a>",  function() require("dial.map").manipulate("increment", "normal") end, desc = "Increment" },
    { "<C-x>",  function() require("dial.map").manipulate("decrement", "normal") end, desc = "Decrement" },
    { "g<C-a>", function() require("dial.map").manipulate("increment", "gnormal") end, desc = "Increment (Extended)" },
    { "g<C-x>", function() require("dial.map").manipulate("decrement", "gnormal") end, desc = "Decrement (Extended)" },
    { "<C-a>",  function() require("dial.map").manipulate("increment", "visual") end, mode = "v", desc = "Increment (Visual)" },
    { "<C-x>",  function() require("dial.map").manipulate("decrement", "visual") end, mode = "v", desc = "Decrement (Visual)" },
  },
  config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group{
      default = {
        augend.integer.alias.decimal,  -- 10進数
        augend.integer.alias.hex,      -- 16進数
        augend.date.alias["%Y-%m-%d"], -- YYYY-MM-DD
        augend.date.alias["%m/%d"],    -- MM/DD
        augend.constant.alias.bool,    -- true <-> false
        augend.constant.new{           -- Custom: "yes" <-> "no"
          elements = {"yes", "no"},
          word = true,
          cyclic = true,
        },
      },
    }
  end
}
