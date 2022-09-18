local aerial = require 'aerial'

aerial.setup {
    default_direction = "left",
    min_width = 28,
    open_automatic = function()
        return false 
    end,
}
