return {
    -- Dynamic column limit display
    {
        'Bekaboo/deadcolumn.nvim',
        event = 'InsertEnter',
    },
    -- Indentation styling
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = "▏" },
        },
        event = { 'BufReadPre *.*', 'BufNewFile' }
    },
}
