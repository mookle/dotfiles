return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            signs = {
                add = {text = '▋'},
                change = {text = '▋'},
            },
            signcolumn = true,
            numhl = true,
            current_line_blame = true,
            current_line_blame_opts = {
                delay = 220,
                ignore_whitespace = true,
            },
            on_attach = function(bufnr)
                local map = require('utils').map
                local gs = require('gitsigns')
                -- Stage hunk/buffer for commit
                map('n', '<leader>gA', gs.stage_buffer)
                map('n', '<leader>ga', gs.stage_hunk)
                map('v', '<leader>ga', function()
                    gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') }
                end)
                -- Undo hunk staging
                map('n', '<leader>gu', gs.undo_stage_hunk)
                -- Navigate hunks
                map('n', '<leader>[h', function() gs.nav_hunk('prev') end)
                map('n', '<leader>]h', function() gs.nav_hunk('next') end)
                -- Display git blame per file/line
                map('n', '<leader>gb', gs.blame)
                -- Open diff in hsplit
                map('n', '<leader>gd', gs.diffthis)
            end,
        })
    end,
}
