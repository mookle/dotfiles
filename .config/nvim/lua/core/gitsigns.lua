local gh = require('utils').gh

vim.pack.add({
    gh('lewis6991/gitsigns.nvim'),
})

local gitsigns = require('gitsigns')

gitsigns.setup({
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
})

local map = require('utils').map

-- Stage hunk/buffer for commit
map('n', '<leader>gA', gitsigns.stage_buffer)
map('n', '<leader>ga', gitsigns.stage_hunk)
map('v', '<leader>ga', function()
    gitsigns.stage_hunk { vim.fn.line('.'), vim.fn.line('v') }
end)
-- Undo hunk staging
map('n', '<leader>gu', gitsigns.undo_stage_hunk)
-- Navigate hunks
map('n', '<leader>[h', function() gitsigns.nav_hunk('prev') end)
map('n', '<leader>]h', function() gitsigns.nav_hunk('next') end)
-- Display git blame per file/line
map('n', '<leader>gb', gitsigns.blame)
-- Open diff in hsplit
map('n', '<leader>gd', gitsigns.diffthis)
