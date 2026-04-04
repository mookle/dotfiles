local gh = require('utils').gh

vim.pack.add({
    {
        src = gh('mrcjkb/rustaceanvim'),
        version = vim.version.range('^8'),
    }
})
