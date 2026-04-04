local gh = require('utils').gh

vim.pack.add({
    gh('ntpeters/vim-better-whitespace'),
})

vim.g.better_whitespace_enabled = 1
vim.g.strip_whitespace_on_save = 1
vim.g.strip_whitespace_confirm = 0
