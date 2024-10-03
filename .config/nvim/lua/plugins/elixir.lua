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
            }
        }
    end,
    ft = 'elixir',
    version = "*",
}

