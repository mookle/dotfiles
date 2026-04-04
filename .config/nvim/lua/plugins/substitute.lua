local gh = require('utils').gh

vim.pack.add({
    gh('gbprod/substitute.nvim'),
})

local substitute = require("substitute")

substitute.setup({})

local map = require("utils").map

local opts = { noremap = true }

map('n', 's', substitute.operator, opts)
map('n', 'ss', substitute.line, opts)
map('n', 'S', substitute.eol, opts)
map('x', 's', substitute.visual, opts)
