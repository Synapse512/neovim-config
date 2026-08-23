return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  
  keys = {
    -- search files, directories, or entire c drive
    { "<leader>ff", function() require("fzf-lua").files() end, desc = "search files in directory (fzf)" },
    { "<leader>fc", function() require("fzf-lua").files({ cwd = "C:/" }) end, desc = "search C: (fzf)" },

    -- grep, buffers, and keymaps
    { "<leader>lg", function() require("fzf-lua").live_grep() end, desc = "live grep (fzf)" },
    { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "open buffers (fzf)" },
    { "<leader>l", function() require("fzf-lua").keymaps() end, desc = "keymaps (fzf)" },
 },

  opts = {
    --"telescope", 
  },
}
