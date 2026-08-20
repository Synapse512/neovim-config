return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "mason-org/mason.nvim", opts = { firewall = { enabled = true } } },
    "mason-org/mason-lspconfig.nvim",
  },


  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "emmylua_ls" },
      handlers = {
        function(server_name)
          vim.lsp.enable(server_name)
        end,
      },
    })

    -- enable luau lsp manually because bum ahh mason cant install it so i got it in PATH
    vim.lsp.enable("luau_lsp")
  end,
}
