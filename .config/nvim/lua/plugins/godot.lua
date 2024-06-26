return {
    -- Godot/GDScript integration
    "habamax/vim-godot",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("lspconfig").gdscript.setup {
            cmd = { "nc", "localhost", "6005" },
            capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        }

        require("utils").map("n", "<space>r", "<cmd>GodotRun<cr>")
        require("utils").map("n", "<space>c", "<cmd>GodotRunCurrent<cr>")
    end,
}
