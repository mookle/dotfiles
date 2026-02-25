return {
    -- Godot/GDScript integration
    "habamax/vim-godot",
    ft = 'gdscript',
    dependencies = {
        "neovim/nvim-lspconfig",
        -- since moving to blink.cmp, this dep causes problems even in other filetypes
        -- "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        vim.lsp.config('gdscript', {
            cmd = { "nc", "localhost", "6005" },
            capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        })

        require("utils").map("n", "<space>r", "<cmd>GodotRun<cr>")
        require("utils").map("n", "<space>c", "<cmd>GodotRunCurrent<cr>")
    end,
}
