return {
    -- Elixir integration
    "elixir-tools/elixir-tools.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("elixir").setup()
    end,
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
}

