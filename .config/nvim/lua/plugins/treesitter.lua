return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "lua",
            "rust",
            "toml",
            "clojure",
            "dockerfile",
            "elixir",
            "erlang",
            "eex",
            "gdscript",
            "go",
            "godot_resource",
            "scala",
            "yaml",
            "vim",
            "vimdoc",
            "c",
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting=false,
        },
        ident = { enable = true },
        rainbow = {
            enable = true,
            extended_mode = true,
            max_file_lines = nil,
        },
        incremental_selection = {
            enable = false,
            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                scope_incremental = "<S-CR>",
                node_decremental = "<BS>",
            },
        },
    },
    config = function(args)
        require("nvim-treesitter.configs").setup(args.opts)
        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
        vim.wo.foldlevel = 99
    end,
    build = ":TSUpdate",
}
