vim.pack.add({
    require('utils').gh('numToStr/Navigator.nvim'),
})

require('Navigator').setup({})

local map = require('utils').map

map('n', '<c-h>', '<cmd>NavigatorLeft<cr>')
map('n', '<c-j>', '<cmd>NavigatorDown<cr>')
map('n', '<c-k>', '<cmd>NavigatorUp<cr>')
map('n', '<c-l>', '<cmd>NavigatorRight<cr>')
