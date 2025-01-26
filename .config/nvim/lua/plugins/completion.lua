return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets',
        'mikavilpas/blink-ripgrep.nvim',
    },
    version = '*',
    opts = {
        keymap = {

            preset = 'enter',
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
        },
        completion = {
            ghost_text = { enabled = true },
        },
        signature = { enabled = true },
        appearance = {
            nerd_font_variant = 'mono',
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer', 'ripgrep' },
            providers = {
                ripgrep = {
                    module = "blink-ripgrep",
                    name = "Ripgrep",
                    -- append a description to easily distinguish rg results
                    transform_items = function(_, items)
                        for _, item in ipairs(items) do
                            item.labelDetails = {
                                description = "(rg)",
                            }
                        end
                        return items
                    end,
                },
            },
        },
    },
    opts_extend = { "sources.default" }
}
