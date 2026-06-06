local gh = require('utils').gh

vim.pack.add({
    gh('noisesfromspace/touchup.nvim'),
})

local touchup = require('touchup')

touchup.setup({
    bullets = {
        enabled = true,
        icons = { '•', '◦', '*', '-' },
    },
})
