-- merge this, telescope, and oil into a file-system/navigation spec?
local labels = 'tnriaogmplfuwybjhczk'

return {
    'otavioschwanck/arrow.nvim',
    opts = {
        show_icons = false,
        leader_key = ';',
        index_keys = labels,
    },
    keys = {
        { ';', '<cmd>Arrow open<cr>' }
    }
}
