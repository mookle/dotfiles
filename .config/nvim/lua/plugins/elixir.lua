return {
    -- Elixir integration
    "elixir-tools/elixir-tools.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local elixir = require("elixir")
        local elixirls = require("elixir.elixirls")

        elixir.setup {
            nextls = { enable = false },
            elixirls = {
                settings = elixirls.settings {
                    dialyzerEnabled = true,
                    incrementalDialyzer = true,
                    fetchDeps = false,
                    enableTestLenses = false,
                    suggestSpecs = true,
                    autoInsertRequiredAlias = true,
                },
                on_attach = function(client, bufnr)
                    vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
                    vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
                    vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
                end
            }
        }
    end,
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
}

