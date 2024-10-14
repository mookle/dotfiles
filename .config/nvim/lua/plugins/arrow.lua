-- merge this, telescope, and oil into a file-system/navigation spec?
local labels = 'tnseriaogmplfuwyqbjdhdcxzkv'

return {
    'otavioschwanck/arrow.nvim',
    opts = {
        show_icons = false,
        leader_key = ';', -- Recommended to be a single key
        -- buffer_leader_key = 'm', -- Per Buffer Mappings
        index_keys = labels,
    },
    keys = {
        { ';', '<cmd>Arrow open<cr>' }
    }
}
