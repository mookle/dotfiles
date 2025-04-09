return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    opts = {
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
    },
    keys = {
        { '<leader>fb', '<cmd>Neotree toggle<cr>' }
    }
}
