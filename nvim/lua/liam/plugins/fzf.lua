return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  
  keys = {
    -- search files, directories, or entire c drive
    { "<leader>ff", function() require("fzf-lua").files() end, desc = "fzf files in directory" },
    { "<leader>fc", function() require("fzf-lua").files({ cwd = "C:/" }) end, desc = "fzf C:" },

    -- grep and buffers
    { "<leader>fw", function() require("fzf-lua").live_grep() end, desc = "fzf live grep" },
    { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "fzf buffers" },
  },

  opts = {
    --"telescope", 
  },
}