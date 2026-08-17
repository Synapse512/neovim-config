-- i have this purely for project.nvim (which i dont use anymore)
return {
    enabled = false,
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake' },
    },
    --[[
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'find files (telescope)' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'live grep (telescope)' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'buffers (telescope)' },
        { 
            '<leader>fc', 
            function() 
                require('telescope.builtin').find_files({ cwd = 'C:/' }) 
            end, 
            desc = 'Find files across C: (telescope)' 
        },
    },
    ]]
}
