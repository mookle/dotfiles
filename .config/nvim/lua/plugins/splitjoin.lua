-- Split (across multiple lines) or join (into a single line) arbitrary data
-- contained within a tree structure.
local gh = require('utils').gh

vim.pack.add({
    gh('nvim-treesitter/nvim-treesitter'),
    gh('Wansmer/treesj'),
})

require('treesj').setup({
    use_default_keymaps = false,
})

local map = require('utils').map

map('n', '<leader>sj', function() require('treesj').toggle() end)
