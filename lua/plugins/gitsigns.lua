local gitsigns = require 'gitsigns'

gitsigns.setup {
    keymaps = {},
    numhl = true,
    current_line_blame = false,
    preview_config = {
        border = "double",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1
    },
}
