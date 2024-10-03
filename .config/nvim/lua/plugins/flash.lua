local labels = 'tnseriaogmplfuwyqbjdhdcxzkv'

return {
    'folke/flash.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        labels = labels,
        search = {
            multi_window = false,
            wrap = false,
        },
        label = {
            uppercase = false,
            rainbow = {
                enabled = true,
                shade = 4,
            },
            after = false,
            before = true,
        },
        modes = {
            search = {
                enabled = true,
            },
            treesitter = {
                labels = labels,
            },
        },
    },
    keys = {
        {
            '<S-cr>',
            function()
                require('flash').treesitter()
            end,
            desc = 'Select scope by label',
        },
        {
            '<C-cr>',
            function()
                require('flash').treesitter_search()
            end,
            desc = 'Select scope by jump search',
        },
    },
}
