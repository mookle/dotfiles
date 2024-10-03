return {
    "gbprod/substitute.nvim",
    event = 'InsertEnter',
    config = function(_, opts)
        local substitute = require("substitute")
        local map = require("utils").map
        local mopts = { noremap = true }
        substitute.setup(opts)
        map("n", "s", substitute.operator, mopts)
        map("n", "ss", substitute.line, mopts)
        map("n", "S", substitute.eol, mopts)
        map("x", "s", substitute.visual, mopts)
    end,
}
