local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimports()
    end,
    group = format_sync_grp,
})

return {
    -- golang integration
    "ray-x/go.nvim",
    ft = { 'go', 'gomod' },
    dependencies = {
        "ray-x/guihua.lua",
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("go").setup()
        vim.lsp.config('gopls', {})
    end,
    build = ':lua require("go.install").update_all_sync()'
}
