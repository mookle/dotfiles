return {
    'simonmclean/triptych.nvim',
    event = 'VeryLazy',
    dependencies = {
        'nvim-lua/plenary.nvim', -- required
        'nvim-tree/nvim-web-devicons', -- optional
    },
    opts = {
        mappings = {
            show_help = 'g?',
            jump_to_cwd = '.',  -- Pressing again will toggle back
            nav_left = '<Left>',
            nav_right = { '<Right>', '<CR>' }, -- If target is a file, opens the file in-place
            open_hsplit = { '-' },
            open_vsplit = { '|' },
            quit = { 'q', '<Esc>' },
            toggle_collapse_dirs = 'z',
        },
    },
    keys = {
        { '<leader>ft', '<cmd>Triptych<cr>' }
    }
}
