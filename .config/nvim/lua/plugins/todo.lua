return {
    'ackeraa/todo.nvim',
    config = function()
        require('todo').setup({
            opts = {
                -- this needs to be an absolute path
                file_path = '/home/mathew/.todolist'
            },
	})
    end,
    keys = {
        {
            '<leader>t', '<cmd>Todo<cr>'
        }
    }
}
