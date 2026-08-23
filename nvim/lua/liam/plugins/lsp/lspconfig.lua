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

    -- configure luau manually because stupid mason doesnt let me download it
    vim.lsp.config("luau_lsp", {
      settings = {
        ["luau-lsp"] = {
          platform = {
            type = "roblox",
          },
          sourcemap = {
            enabled = true,
            autogenerate = true,
          },
        },
      },
    })
    vim.lsp.enable("luau_lsp")
  end,
}
