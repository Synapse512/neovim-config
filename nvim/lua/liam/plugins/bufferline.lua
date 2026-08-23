return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local bufferline = require("bufferline") 

    bufferline.setup({
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        separator_style = "thin",
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,

        offsets = {
          {
            text = "Explorer",
            filetype = "NvimTree",
            separator = true,
          },
        },

        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold,
        },


        -- tab keymaps
        vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer (bufferline)" }),
        vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer (bufferline)" }),
        vim.keymap.set("n", "<S-x>", function()
         local cur = vim.api.nvim_get_current_buf()
          vim.cmd("bprevious")

          if vim.api.nvim_get_current_buf() == cur then
            vim.cmd("enew")
          end
          vim.bo[cur].buflisted = false
        end, { desc = "Close tab (bufferline)" })
        

      }, 
    })
  end,
}
