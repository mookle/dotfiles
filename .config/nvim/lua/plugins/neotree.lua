local gh = require('utils').gh

vim.pack.add({
    gh('nvim-lua/plenary.nvim'),
    gh('nvim-tree/nvim-web-devicons'), -- not strictly required, but recommended
    gh('MunifTanjim/nui.nvim'),
    {
        src = gh('nvim-neo-tree/neo-tree.nvim'),
        version = vim.version.range('v3.*'),
    },
})


require('neo-tree').setup({
    close_if_last_window = true,
    open_files_do_not_replace_types = { 'terminal', 'qf' },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
        },
        follow_current_file = {
            enabled = true,
        }
    }
})

local map = require('utils').map
map('n', '<leader>fb', '<cmd>Neotree toggle<cr>')
