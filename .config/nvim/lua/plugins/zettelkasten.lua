local gh = require('utils').gh

vim.pack.add({
    gh('zk-org/zk-nvim'),
})

local zk_dir = vim.fn.expand '~' .. '/zettelkasten'
local title_prompt = function()
    vim.ui.input({ prompt = 'Enter note title: ' }, function(input)
        if input ~= nil then
            require('zk.api').new(zk_dir, { dir = 'unfiled', title = input }, function(err, res)
                vim.cmd('e ' .. res.path)
                vim.api.nvim_feedkeys('Gi', 't', false)
            end)
        end
    end)
end

require('zk').setup({})

local map = require('utils').map

map('n', '<leader>n', title_prompt)
