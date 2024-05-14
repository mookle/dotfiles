return {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    ft = { 'rust' },
    config = function()
        vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
    end,
}
