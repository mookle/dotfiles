return {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
        keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-x>"] = "actions.select_split",
            ['<C-l>'] = false,
            ['<C-h>'] = false,
        },
        view_options = {
            show_hidden = true,
        },
    },
    keys = {
        { '<leader>.',  '<cmd>Oil<cr>' },
    },
}
