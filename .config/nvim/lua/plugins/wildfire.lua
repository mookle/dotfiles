return {
    -- Make incr. selection less greedy with surrounds when walking the tree.
    "sustech-data/wildfire.nvim",
    event = { 'BufReadPre *.*', 'BufNewFile' },
    dependencies = {
        "nvim-treesitter/nvim-treesitter"
    },
    event = "VeryLazy",
    config = true,
}
