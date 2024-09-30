-- Split (across multiple lines) or join (into a single line) arbitrary data
-- contained within a tree structure.
return {
    'Wansmer/treesj',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
    opts = {
        use_default_keymaps = false,
    },
    keys = {
        { '<leader>sj', function() require('treesj').toggle() end },
    },
}
