return {
    {
        -- LSP breadcrumbs / jump points
        "SmiteshP/nvim-navbuddy",
        keys = {
            { '<space>n', '<cmd>NavBuddy<cr>' },
        },
        dependencies = {
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            local actions = require("nvim-navbuddy.actions")
            require("nvim-navbuddy").setup({
                lsp = {
                    auto_attach = true,
                },
                use_default_mappings = false,
                mappings = {
                    ["<up>"] = actions.previous_sibling(),
                    ["<down>"] = actions.next_sibling(),
                    ["<left>"] = actions.parent(),
                    ["<right>"] = actions.children(),
                    ["d"] = actions.delete(),
                    ["<enter>"] = actions.select(),
                    ["<esc>"] = actions.close(),
                    ["q"] = actions.close(),
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- visual LSP loading/progress
            { "j-hui/fidget.nvim", config = true }
        },
        event = { 'BufReadPre *.*', 'BufNewFile' },
        init = function()
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
        end,
        config = function()
            local map = require("utils").map
            local opts = { buffer = buffer }

            map('n', 'gd', vim.lsp.buf.definition, opts)
            map('n', 'gc', vim.lsp.buf.declaration, opts)
            map('n', 'gi', vim.lsp.buf.implementation, opts)
            map('n', 'gr', vim.lsp.buf.references, opts)
            map('n', 'K', vim.lsp.buf.hover, opts)
            map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
            map('n', '<space>f', function()
                vim.lsp.buf.format { async = true }
            end, opts)

            require('lspconfig').clojure_lsp.setup({})
        end,
    },
}
