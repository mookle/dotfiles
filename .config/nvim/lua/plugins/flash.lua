local labels = 'tnseriaogmplfuwyqbjdhdcxzkv'

return {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {
        labels = labels,
        search = {
            multi_window = false,
        },
        label = {
            uppercase = false,
            rainbow = {
                enabled = true,
                shade = 4,
            },
        },
        modes = {
            search = {
                enabled = true,
            },
            treesitter = {
                labels = labels,
            },
        }
    },
    keys = {
        {
            '<space><cr>',
            mode = { 'n', 'o', 'x' },
            function()
                require('flash').treesitter()
            end,
            desc = 'Select scope by label',
        },
        {
            '<space>t',
            mode = { 'n', 'o', 'x' },
            function()
                require('flash').treesitter_search()
            end,
            desc = 'Select scope by jump search',
        },
    },
}

