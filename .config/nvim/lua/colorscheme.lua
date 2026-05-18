local gh = require('utils').gh

vim.pack.add({
    gh('folke/tokyonight.nvim'),
    gh('sts10/vim-pink-moon'),
    gh('EdenEast/nightfox.nvim'),
    gh('rose-pine/neovim'),
    gh('rktjmp/lush.nvim'), -- zenbones dep
    gh('mcchrish/zenbones.nvim'),
    gh('Aejkatappaja/cendre'),
})

require('cendre').setup({
    background = "soft", -- "hard" | "medium" | "soft"
})

local opts = {
    darkness = 'warm',
    lighten_noncurrent_window = true,
}
vim.g.forestbones = opts
vim.g.neobones = opts
vim.g.rosebones = opts
vim.g.zenwritten = opts
vim.g.tokyobones = opts

vim.cmd([[colorscheme cendre]])
