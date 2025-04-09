return {
    'numToStr/Navigator.nvim',
    config = function()
        require('Navigator').setup({})
    end,
    event = { 'BufReadPre *.*', 'BufNewFile' },
    keys = {
        { "<c-h>", "<cmd>NavigatorLeft<cr>" },
        { "<c-j>", "<cmd>NavigatorDown<cr>" },
        { "<c-k>", "<cmd>NavigatorUp<cr>" },
        { "<c-l>", "<cmd>NavigatorRight<cr>" },
    },
}
