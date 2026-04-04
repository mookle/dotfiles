local gh = require('utils').gh

vim.pack.add({
    -- Automatically add/remove bracket pairs
    gh('windwp/nvim-autopairs'),
    -- Add/remove/edit surrounding pairs
    gh('kylechui/nvim-surround'),
})

require('nvim-autopairs').setup()
require('nvim-surround').setup()
