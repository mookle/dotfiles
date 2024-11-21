return {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = {
        options = {
            section_separators = { left = '', right = '' },
            component_separators = '/',
            globalstatus = true,

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
                        error = '',
                        warn = '',
                        hint = '󰌵',
                        info = '',
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
    }
}
