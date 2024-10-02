return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- visual LSP loading/progress
        {
            "j-hui/fidget.nvim",
            tag = "legacy",
            config = true,
        },
        -- LSP breadcrumbs / jump points
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
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
                require("utils").map("n", "<space>n", "<cmd>Navbuddy<cr>", {})
            end,
        },
    },
    init = function()
        local signs = { Error = "", Warn = "", Hint = "", Info = "" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
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
    end,
}
