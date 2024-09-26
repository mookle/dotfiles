return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons'
        },
        opts = {
            heading = {
                sign = false,
                position = 'inline',
                icons = { '' },
                width = 'block',
                left_pad = { 0, 2, 4, 6, 8, 10 },
                border = true,
                border_virtual = true,
                above = '',
                below = '-',
                backgrounds = { 'Title' },
            },
            code = {
                sign = false,
                style = 'normal',
                width = 'block',
                min_width = 80,
                left_pad = 2,
                right_pad = 2,
                left_margin = 1,
                border = 'thick',
            },
            dash = {
                icon = '-',
            },
            bullet = {
                enabled = true,
                icons = { '·' },
                left_pad = 1,
            },
            checkbox = { enabled = false },
        },
   },
}
