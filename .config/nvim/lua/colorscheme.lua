return {
    'mookle/autobot-vim',
    'jacoborus/tender.vim',
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
}
