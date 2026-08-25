-- change window
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })


-- change tab
vim.keymap.set("n", "<S-Left>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<S-Right>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
