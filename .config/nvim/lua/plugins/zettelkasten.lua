local zk_dir = vim.fn.expand '~' .. '/zettelkasten'
return {
    {
        "zk-org/zk-nvim",
        config = function()
            require("zk").setup({})
        end,
        event = {
          'BufReadPre ' .. zk_dir .. '/*.md',
          'BufNewFile ' .. zk_dir .. '/*.md',
        },
        keys = {
            { '<leader>n', '<cmd>ZkNew { dir = "unfiled" }<cr>' },
        }
    },
}

