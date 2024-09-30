return {
    -- Automatically add/remove bracket pairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    -- Add/remove/edit surrounding pairs
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        config = true,
    },
}
