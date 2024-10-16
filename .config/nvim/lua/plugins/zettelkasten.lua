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

return {
    {
        "zk-org/zk-nvim",
        config = function()
            require("zk").setup({})
        end,
        event = {
          'BufReadPre ' .. zk_dir .. '/*.md',
          'BufNewFile ' .. zk_dir .. '/*.md',
        },
        keys = {
            { '<leader>n', title_prompt },
        }
    },
}

