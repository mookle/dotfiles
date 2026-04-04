local gh = require('utils').gh

vim.pack.add({
    gh('folke/snacks.nvim'),
})

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

local snacks = require('snacks')

snacks.setup({
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
})

local map = require('utils').map

map('n', '<space>/', function() snacks.picker.grep() end)
map('n', '<space>b', function() snacks.picker.buffers() end)
map('n', '<space>cs', function() snacks.picker.colorschemes() end)
map('n', '<space>d', function() snacks.picker.diagnostics() end)
map('n', '<space>gr', function() snacks.picker.lsp_symbols() end)
map('n', '<space>h', function() snacks.picker.recent() end)
map('n', '<space>k', function() snacks.picker.keymaps() end)
map('n', '<space>lj', function() snacks.picker.jumps() end)
map('n', '<space>ll', function() snacks.picker.loclist() end)
map('n', '<space>lq', function() snacks.picker.qflist() end)
map('n', '<space>o', function() snacks.picker.files() end)
map('n', '<space>p', function() snacks.picker.projects() end)
map('n', '<space>r', function() snacks.picker.resume() end)
