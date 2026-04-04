local gh = require('utils').gh
local map = require('utils').map

vim.pack.add({
    gh('j-hui/fidget.nvim'),
    gh('neovim/nvim-lspconfig'),
})

require('fidget').setup()

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '󰌵',
            [vim.diagnostic.severity.INFO] = '',
        },

    }
})

local opts = { buffer = buffer }
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gc', vim.lsp.buf.declaration, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', 'K', vim.lsp.buf.hover, opts)
map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)
