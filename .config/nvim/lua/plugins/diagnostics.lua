local gh = require('utils').gh

vim.pack.add({
    gh('rachartier/tiny-inline-diagnostic.nvim'),
})

vim.diagnostic.config({
    virtual_text = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '󰌵',
            [vim.diagnostic.severity.INFO] = '',
        },
    }
})

require('tiny-inline-diagnostic').setup({
    signs = {
        left = "",
        right = "",
    },
    blend = {
        factor = 0.30,
    },
    options = {
        show_source = true,
        -- softwrap = 10,
        multilines = true,
        multiple_diag_under_cursor = true,
        show_all_diags_on_cursorline = true,
        virt_texts = {
            -- keep diagnostics to the left of gitsigns
            priority = 1000,
        },
    },
})

