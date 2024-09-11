return {
    -- indentation styling
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = "▏" },
        }
    },
    -- highlight trailing whitespace
    { 'ntpeters/vim-better-whitespace' },
    -- dynamic column limit display
    { 'Bekaboo/deadcolumn.nvim' },
    -- unified nvim/tmux buffer/pane navigation
    {
        'christoomey/vim-tmux-navigator',
        init = function()
            vim.g.tmux_navigator_no_wrap = 1
            vim.g.tmux_navigator_no_mappings = 1
            vim.g.tmux_navigator_save_on_switch = 1 -- write current buffer if changed
        end,
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
        },
        keys = {
            { "<c-h>", "<cmd>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd>TmuxNavigateRight<cr>" },
        },
    },
    -- multiline cursor
    { 'mg979/vim-visual-multi' },
}
