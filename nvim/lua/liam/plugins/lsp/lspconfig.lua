return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim", opts = { firewall = { enabled = true } } },
    "mason-org/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    require("mason-lspconfig").setup({
      ensure_installed = { "emmylua_ls" },
    })
  end,
}
