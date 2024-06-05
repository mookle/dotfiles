return {
    { -- debug adapter protocol
        'mfussenegger/nvim-dap',
        config = function()
            require('dap').adapters.codelldb = {
                type = 'server',
                port = '${port}',
                executable = {
                    -- executable requires a manual install
                    command = '/home/mathew/.local/lib/codelldb/extension/adapter/codelldb',
                    args = {'--port', '${port}'},
                }
            }
        end,
    },
    { -- nice UI for dap
        'rcarriga/nvim-dap-ui',
        dependencies = {
            'mfussenegger/nvim-dap',
            'nvim-neotest/nvim-nio',
        },
        config = function(_, opts)
            require('dapui').setup(opts)
        end,
    },
}
