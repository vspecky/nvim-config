local autosave = require 'auto-save'
local utils = require 'auto-save.utils.data'

autosave.setup {
    enabled = true,
    trigger_events = {"InsertLeave"},
    condition = function(buf)
        local fn = vim.fn
        if
            fn.getbufvar(buf, "&modifiable") == 1 and
            utils.not_in(
                fn.getbufvar(buf, "&filetype"),
                {
                }
            )
        then
            return true
        end

        return false
    end
}
