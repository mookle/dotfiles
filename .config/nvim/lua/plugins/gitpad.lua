return {
    -- Note-taking UI for git projects
    'yujinyuz/gitpad.nvim',
    config = function(_, opts)
        require('gitpad').setup(opts)
    end,
    keys = {
        {
            '<space>pp',
            function()
                require('gitpad').toggle_gitpad({title = 'Project Notes'})
            end,
        },
    },
}

