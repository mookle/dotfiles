local gh = require("utils").gh

vim.pack.add({
    gh("nvim-treesitter/nvim-treesitter"),
})

local ts = require("nvim-treesitter")

ts.install({
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
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    local lang = vim.treesitter.language.get_lang(ev.match)

    if not vim.tbl_contains(ts.get_available(), lang) then
      return
    end

    if not vim.tbl_contains(ts.get_installed(), lang) then
      ts.install(lang)
      return
    end

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

    vim.bo[ev.buf].indentexpr =
      "v:lua.require'nvim-treesitter'.indentexpr()"

    vim.treesitter.start(ev.buf)
  end,
})

