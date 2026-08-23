-- lua/plugins/diffview.lua
return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open Git Diff (diff-view)" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close Git Diff (diff-view)" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Current File History (diff-view)" },
  },
  opts = {},
}
