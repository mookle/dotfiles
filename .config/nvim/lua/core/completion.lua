local gh = require('utils').gh

vim.pack.add({
    gh('rafamadriz/friendly-snippets'),
    gh('mikavilpas/blink-ripgrep.nvim'),
    {
        src = gh('saghen/blink.cmp'),
        version = vim.version.range('^1'),
    }
})

require('blink.cmp').setup({
    -- fuzzy = { implementation = "lua" },
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
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        per_filetype = {},
        transform_items = function(_, items) return items end,
        min_keyword_length = 0,
        providers = {
            lsp = {
                name = 'LSP',
                module = 'blink.cmp.sources.lsp',
                fallbacks = { 'buffer' },
            },
            path = {
                module = 'blink.cmp.sources.path',
                score_offset = 3,
                fallbacks = { 'buffer' },
            },
            snippets = {
                module = 'blink.cmp.sources.snippets',
                score_offset = -1, -- receives a -3 from top level snippets.score_offset
            },
            buffer = {
                module = 'blink.cmp.sources.buffer',
                score_offset = -3,
            },
            cmdline = {
                module = 'blink.cmp.sources.cmdline',
            },
            omni = {
                module = 'blink.cmp.sources.complete_func',
                enabled = function() return vim.bo.omnifunc ~= 'v:lua.vim.lsp.omnifunc' end,
                ---@type blink.cmp.CompleteFuncOpts
                opts = {
                complete_func = function() return vim.bo.omnifunc end,
                },
            },
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
})
