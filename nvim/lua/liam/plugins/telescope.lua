return {
    'nvim-telescope/telescope.nvim', version = '*',
    enabled = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake' },
    },
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'find files' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'live grep' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'buffers' },
        { 
            '<leader>fc', 
            function() 
                require('telescope.builtin').find_files({ cwd = 'C:/' }) 
            end, 
            desc = 'Find files across C:' 
        },
    },
}
