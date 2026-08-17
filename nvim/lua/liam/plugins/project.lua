return {
  enabled = false,
  'ahmedkhalf/project.nvim',
  main = 'project_nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  keys = {
    { '<C-l>', '<cmd>Telescope projects<CR>', desc = 'Find recent projects (project)' },
    { '<C-cd>', '<cmd>ProjectRoot<CR>', desc = 'Snap to project root (project)' },
  },
  opts = {
    manual_mode = true,
    detection_methods = { 'lsp', 'pattern' },
    patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json' },
    ignore_lsp = {},
    exclude_dirs = { "C:/", "~/" },
    show_hidden = false,
    silent_chdir = true,
    scope_chdir = 'global',
    datapath = vim.fn.stdpath('data'),
  },
}
