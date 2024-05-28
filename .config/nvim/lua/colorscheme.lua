return {
    'mookle/autobot-vim',
    'jacoborus/tender.vim',
    {
        "mcchrish/zenbones.nvim",
        dependencies = {
            "rktjmp/lush.nvim",
        },
        config = function()
            --vim.g.neobones_darkness = 'warm'
            vim.g.neobones_lighten_noncurrent_window = true
            vim.g.rosebones_lighten_noncurrent_window = true
            vim.g.zenwritten_darkness = 'warm'
            vim.g.zenwritten_lighten_noncurrent_window = true
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
}
