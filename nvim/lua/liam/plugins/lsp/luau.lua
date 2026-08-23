return {
  "lopi-py/luau-lsp.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    platform = {
      type = "roblox",
    },
    types = {
      roblox_security_level = "PluginSecurity",
    },
    sourcemap = {
      enabled = true,
      autogenerate = true,
      rojo_project_file = "default.project.json",
    },
  },
}
