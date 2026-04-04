local gh = require('utils').gh

vim.pack.add({
    gh('stevearc/oil.nvim'),
})

require('oil').setup({
    keymaps = {
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-x>"] = "actions.select_split",
        ['<C-l>'] = false,
        ['<C-h>'] = false,
    },
    view_options = {
        show_hidden = true,
    },
})

local map = require('utils').map

map('n', '<leader>.', '<cmd>Oil<cr>')
