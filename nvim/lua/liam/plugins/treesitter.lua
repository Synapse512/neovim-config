return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "luau",
      "lua",
      "cpp",
      "c",
    },
    highlight = {
      enable = true,
    },
  },
}
