return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',

    opts = {
       ensure_installed  = {
       "luau",
       "lua",
       "cpp",
       "c"
    },
   },

   highlight = {enable = true},

}
