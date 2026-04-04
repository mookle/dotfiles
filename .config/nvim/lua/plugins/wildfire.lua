-- Make incr. selection less greedy with surrounds when walking the tree.
local gh = require('utils').gh

vim.pack.add({
    gh('nvim-treesitter/nvim-treesitter'),
    gh('sustech-data/wildfire.nvim'),
})

require('wildfire').setup()
