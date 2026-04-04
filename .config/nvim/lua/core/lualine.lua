local gh = require('utils').gh

vim.pack.add({
    gh('nvim-tree/nvim-web-devicons'),
    gh('nvim-lualine/lualine.nvim'),
})

require('lualine').setup({
    options = {
        section_separators = { left = '', right = '' },
        component_separators = '/',
        globalstatus = true,
        theme = 'auto',
    },
    sections = {
        lualine_a = {
            { 'mode', padding = { left = 2, right = 1 }}
        },
        lualine_b = {
            { 'filename', newfile_status = true, path = 3 },
        },
        lualine_c = {
            {
                'diagnostics',
                symbols = {
                    error = ' ',
                    warn = ' ',
                    hint = '󰌵 ',
                    info = ' ',
                },
                diagnostics_color = {
                    error = 'DiagnosticSignError',
                    warn  = 'DiagnosticSignWarn',
                    info  = 'DiagnosticSignInfo',
                    hint  = 'DiagnosticSignHint',
                },
            },
        },
        lualine_x = { 'branch', 'diff' },
        lualine_y = { 'progress' },
        lualine_z = {
            'location',
        }
    }
})
