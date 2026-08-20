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
      }, 
    })
  end,
}
