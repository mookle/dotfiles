local gh = require('utils').gh

vim.pack.add({
    gh('neovim/nvim-lspconfig'),
    gh('habamax/vim-godot'),
})

vim.lsp.config('gdscript', {
    cmd = { 'nc', 'localhost', '6005' },
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
})

local map = require('utils').map
map('n', '<space>r', '<cmd>GodotRun<cr>')
map('n', '<space>c', '<cmd>GodotRunCurrent<cr>')
