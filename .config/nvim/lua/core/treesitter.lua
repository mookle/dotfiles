local gh = require('utils').gh

vim.pack.add({
    gh('nvim-treesitter/nvim-treesitter'),
})

require('nvim-treesitter.config').setup({
    ensure_installed = {
        "c",
        "clojure",
        "dockerfile",
        "eex",
        "elixir",
        "erlang",
        "gdscript",
        "go",
        "godot_resource",
        "lua",
        "rust",
        "scala",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
    },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting=false,
    },
    indent = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
})
-- build = ":TSUpdate",

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 99

