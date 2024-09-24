local builtin = require('telescope.builtin')
return {
    -- Fuzzy file finder
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function(args, opts)
        local merge = require("utils").merge
        local picker_config = {
            results_title = false,
            preview_title = false,
            prompt_title = false,
        }
        require("telescope").setup({
            defaults = {
                layout_config = {
                    width = 0.9,
                    height = 0.8,
                    preview_width = 0.6,
                },
                mappings = {
                    i = {
                        ["<esc>"] = 'close'
                    },
                },
            },
            pickers = {
                find_files = merge(picker_config, { prompt_prefix = " 󰱽  " }),
                live_grep = merge(picker_config, { prompt_prefix = " 󱎸  " }),
                buffers = merge(picker_config, { prompt_prefix = " 󱈇  " }),
                oldfiles = merge(picker_config, { prompt_prefix = " 󰥌  " }),
                quickfix = merge(picker_config, { prompt_prefix = " quickfix> " }),
                loclist = merge(picker_config, { prompt_prefix = " loclist> " }),
                jumplist = merge(picker_config, { prompt_prefix = " jumplist> " }),
            },
        })
    end,
    keys = {
        { '<space>o', builtin.find_files },
        { '<space>/', builtin.live_grep },
        { '<space>b', builtin.buffers },
        { '<space>h', builtin.oldfiles },
        { '<space>lq', builtin.quickfix },
        { '<space>ll', builtin.loclist },
        { '<space>lj', builtin.jumplist },
    },
}
