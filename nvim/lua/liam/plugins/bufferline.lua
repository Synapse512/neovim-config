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
        pin_icon = "",

        groups = {
            items = {
                require("bufferline.groups").builtin.pinned:with({ icon = "" }),
            },
        },

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

    -- tab keymaps
    vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous tab (bufferline)" })
    vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next tab (bufferline)" })
    vim.keymap.set("n", "<S-p>", "<cmd>BufferLineTogglePin<CR>", { desc = "Toggle pin (bufferline)" })

    vim.keymap.set("n", "<S-x>", function()
      local cur = vim.api.nvim_get_current_buf()
      if require("bufferline.groups")._is_pinned({ id = cur }) then
        return
      end

      vim.cmd("bprevious")

      if vim.api.nvim_get_current_buf() == cur then
        vim.cmd("enew")
      end
      vim.bo[cur].buflisted = false
    end, { desc = "Close tab (bufferline)" })
  end,
}
