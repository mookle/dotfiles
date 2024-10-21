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
                    'rose-pine-moon',
                    'oceanic_material',
                    'OceanicNext',
                    'nightfox',
                    'noctis_minimus',
                    'kanagawa',
                    'kanagawa-paper',
                    'forestbones',
                    'terafox',
                    'neobones',
                    'two-firewatch',
                    'pink-moon',
                    'neofusion',
                }
            })
        end,
    },
    { 'sts10/vim-pink-moon', lazy = true },
    { 'nvimdev/oceanic-material', lazy = true },
    { 'mhartington/oceanic-next', lazy = true },
    { 'rakr/vim-two-firewatch', lazy = true },
    { 'sho-87/kanagawa-paper.nvim', lazy = true },
    { 'EdenEast/nightfox.nvim', lazy = true },
    { 'talha-akram/noctis.nvim', lazy = true },
    { 'rebelot/kanagawa.nvim', lazy = true },
    { 'rose-pine/neovim', lazy = true },
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
            vim.g.nord_disable_background = true
            vim.g.nord_italic = true
            vim.g.nord_uniform_diff_background = true
            vim.g.nord_bold = true
        end,
        lazy = true,
    },
    {
        'diegoulloao/neofusion.nvim',
        opts = {
            terminal_colors = false,
            dim_inactive = true,
            bold = false,
        },
    },
}
