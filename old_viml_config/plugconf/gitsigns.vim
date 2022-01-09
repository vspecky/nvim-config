lua << EOF
local gitsigns = require('gitsigns')

gitsigns.setup {
    keymaps = {},
    numhl = true,
    current_line_blame = true,
    preview_config = {
        border = "double",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1
    },
}
EOF
