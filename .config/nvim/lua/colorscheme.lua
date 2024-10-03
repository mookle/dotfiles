return {
    {
        'zaldih/themery.nvim',
        -- cmd = 'Themery',
        config = function()
            require("themery").setup({
                themes = {
                    'nord',
                    'nordbones',
                    'rosebones',
                    'nightfox',
                    'noctis_minimus',
                    'forestbones',
                    'terafox',
                    'neobones',
                    'kanagawa-paper',
                    'gruvbox-baby',
                    'zenbones',
                }
            })
        end,
    },
    {
        'sho-87/kanagawa-paper.nvim',
        lazy = true,
    },
    {
        'luisiacc/gruvbox-baby',
        lazy = true,
    },
    {
        'EdenEast/nightfox.nvim',
        lazy = true,
    },
    {
        'talha-akram/noctis.nvim',
        lazy = true,
    },
    {
        'mcchrish/zenbones.nvim',
        dependencies = {
            'rktjmp/lush.nvim',
        },
        config = function()
            local opts = {
                darkness = 'stark',
                lighten_noncurrent_window = true,
            }
            vim.g.forestbones = opts
            vim.g.neobones = opts
            vim.g.rosebones = opts
            vim.g.zenwritten = opts
        end,
        lazy = true,
    },
    {
        'shaunsingh/nord.nvim',
        init = function()
            vim.g.nord_contrast = true
            vim.g.nord_borders = true
            vim.g.nord_disable_background = false
            vim.g.nord_italic = false
            vim.g.nord_uniform_diff_background = true
            vim.g.nord_bold = false
        end,
        lazy = true,
    },
}
