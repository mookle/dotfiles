return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000, -- needs to be loaded in first
    init = function()
        -- disable default diagnostics
        vim.diagnostic.config({ virtual_text = false })
    end,
    opts = {
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
                priority = 10,
            },
        },
    },
}
