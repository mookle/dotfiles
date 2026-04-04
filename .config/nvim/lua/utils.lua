local M = {}

-- wrapper for mapping commands
function M.map(mode, input, cmd, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, input, cmd, options)
end

-- shallow merge two tables
function M.merge(t1, t2)
    local merged = {}
    for k,v in pairs(t1) do
        merged[k] = v
    end
    for k,v in pairs(t2) do
        merged[k] = v
    end
    return merged
end

-- Build GitHub URL from user/repo string
function M.gh(user_repo)
    return 'https://github.com/' .. user_repo
end

return M
