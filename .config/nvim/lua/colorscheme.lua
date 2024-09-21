return {
    'mookle/autobot-vim',
    'jacoborus/tender.vim',
    'sainnhe/sonokai',
    'sainnhe/gruvbox-material',
    'morhetz/gruvbox',
    {
        "mcchrish/zenbones.nvim",
        dependencies = {
            "rktjmp/lush.nvim",
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
    },
    {
        'EdenEast/nightfox.nvim',
        opts = {
            groups = {
                all = {
                    -- Revert to Hop's default highlight colours
                    HopNextKey = { fg = "#ff007c" },
                    HopNextKey1 = { fg = "#00dfff" },
                    HopNextKey2 = { fg = "#2b8db3" },
                    HopUnmatched = { fg = "#666666" },
                }
            }
        },
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_italics = true,
            })
        end,
    },
    {
        'shaunsingh/nord.nvim',
        init = function()
            vim.g.nord_contrast = true
            vim.g.nord_borders = false
            vim.g.nord_disable_background = false
            vim.g.nord_italic = false
            vim.g.nord_uniform_diff_background = true
            vim.g.nord_bold = true
        end,
    },
    {
        'sainnhe/everforest',
        init = function()
            vim.g.everforest_background = 'hard'
            vim.g.everforest_enable_italic = true
        end
    },
}
