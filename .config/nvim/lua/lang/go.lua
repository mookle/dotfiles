local gh = require('utils').gh

vim.pack.add({
    gh('ray-x/guihua.lua'),
    gh('neovim/nvim-lspconfig'),
    gh('nvim-treesitter/nvim-treesitter'),
    gh('ray-x/go.nvim'),
})

require('go').setup()

vim.lsp.config('gopls', {})

local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimports()
    end,
    group = format_sync_grp,
})

-- build = ':lua require("go.install").update_all_sync()'
