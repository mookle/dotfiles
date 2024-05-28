return {
    -- indentation styling
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = "▏" },
        }
    },
    -- string/token wrapping
    {
        "tpope/vim-surround",
        dependencies = {
            "tpope/vim-repeat"
        },
    },
    -- highlight trailing whitespace
    { 'ntpeters/vim-better-whitespace' },
    -- dynamic column limit display
    { 'Bekaboo/deadcolumn.nvim' },
    -- unified nvim/tmux buffer/pane navigation
    {
        'christoomey/vim-tmux-navigator',
        config = function()
            local map = require("utils").map
            map("n", "<c-n>", "<cmd>TmuxNavigateLeft<cr>")
            map("n", "<c-e>", "<cmd>TmuxNavigateDown<cr>")
            map("n", "<c-i>", "<cmd>TmuxNavigateUp<cr>")
            map("n", "<c-o>", "<cmd>TmuxNavigateRight<cr>")
        end ,
    },
}
