lua << EOF
local gitsigns = require('gitsigns')

gitsigns.setup {
    keymaps = {},
    numhl = true,
    current_line_blame = true,
}
EOF
