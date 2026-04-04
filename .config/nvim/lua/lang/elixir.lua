local gh = require('utils').gh

vim.pack.add({
    gh('nvim-lua/plenary.nvim'),
    gh('elixir-tools/elixir-tools.nvim'),
})

local elixirls = require('elixir.elixirls')

require('elixir').setup({
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
})
