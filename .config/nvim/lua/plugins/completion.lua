return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets',
        'mikavilpas/blink-ripgrep.nvim',
    },
    version = '1.*',
    opts = {
        keymap = {
            preset = 'enter',
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
            -- disable the keymap added by `signature`; I want to use it for buffer/mux navigation
            ['<C-k>'] = {}
        },
        completion = {
            documentation = {
                auto_show = true,
            },
            ghost_text = { enabled = true },
            list ={
                selection = {
                    preselect = function(ctx)
                        return false
                        -- don't preselect the first menu item on the cmdline (inc search)
                        -- return ctx.mode ~= 'cmdline' and not require('blink.cmp').snippet_active({ direction = 1 })
                    end,
                    auto_insert = function(ctx)
                        return false
                        -- don't auto_insert menu itmems on the cmdline (inc search)
                        -- return ctx.mode ~= 'cmdline' and not require('blink.cmp').snippet_active({ direction = 1 })
                    end,
                }
            }
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
                    score_offset = -100,
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
