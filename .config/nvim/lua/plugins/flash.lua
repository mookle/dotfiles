local gh = require('utils').gh

vim.pack.add({
    gh('folke/flash.nvim'),
})

local labels = 'tnseriaogmplfuwyqbjdhdcxzkv'

require('flash').setup({
    labels = labels,
    search = {
        multi_window = true,
        wrap = true,
    },
    label = {
        uppercase = false,
        rainbow = {
            enabled = false,
            shade = 4,
        },
        after = false,
        before = true,
    },
    modes = {
        search = {
            enabled = true,
        },
        treesitter = {
            labels = labels,
        },
    },
})

local map = require('utils').map

map('n', '<S-cr>', function() require('flash').treesitter() end)
map('n', '<C-cr>', function() require('flash').treesitter_search() end)
