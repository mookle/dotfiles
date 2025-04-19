-- Picker layout merging is a bit unintuitive. Setting a picker-global default,
-- whether based on preset or not, makes it necessary to define a complete
-- override for each layout type. It's cleaner/clearer to capture the layouts
-- as variables and set each picker source explicitly.
local default = {
    layout = {
        box = 'horizontal',
        width = 0.9,
        min_width = 80,
        height = 0.8,
        {
            box = 'vertical',
            border = 'rounded',
            title = '{title}',
            { win = 'input', height = 1, border = 'bottom' },
            { win = 'list', border = 'none' },
        },
        { win = 'preview', title = '{preview}', border = 'rounded', width = 0.5 },
    },
}
local select = { preset = 'select' }
local sidebar = { preset = 'sidebar' }

return {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        indent = { enabled = true, animate = { enabled = false } },
        notifier = { enabled = true },
        picker = {
            enabled = true,
            main = { file = false, current = true },
            sources = {
                buffers = { layout = select },
                colorschemes = { layout = default },
                diagnostics = { layout = default },
                files = { layout = select },
                grep = { layout = default },
                jumps = { layout = default },
                keymaps = { layout = default },
                loclist = { layout = default },
                lsp_symbols = {
                    filter = { default = true },
                    layout = select,
                },
                projects = {
                    dev = { '~/code', '~/projects' },
                    layout = select,
                    patterns = {
                        '.git',
                        'package.json',
                        'Cargo.toml',
                        'mix.exs',
                        'README.md',
                    },
                },
                qflist = { layout = default },
                recent = { layout = select },
            },
            win = {
                input = {
                    keys ={
                        ['<Esc>'] = { 'close', mode = { 'n', 'i' } }
                    }
                }
            },
        },
        statuscolumn = {
            enabled = true,
            folds = {
                open = true,
                git_hl = true,
            },
        },
    },
    keys = {
        { '<space>/', function() Snacks.picker.grep() end },
        { '<space>b', function() Snacks.picker.buffers() end },
        { '<space>cs', function() Snacks.picker.colorschemes() end },
        { '<space>d', function() Snacks.picker.diagnostics() end },
        { '<space>gr', function() Snacks.picker.lsp_symbols() end },
        { '<space>h', function() Snacks.picker.recent() end },
        { '<space>k', function() Snacks.picker.keymaps() end },
        { '<space>lj', function() Snacks.picker.jumps() end },
        { '<space>ll', function() Snacks.picker.loclist() end },
        { '<space>lq', function() Snacks.picker.qflist() end },
        { '<space>o', function() Snacks.picker.files() end },
        { '<space>p', function() Snacks.picker.projects() end },
        { '<space>r', function() Snacks.picker.resume() end },
    },
}
