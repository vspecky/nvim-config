lua << EOF
local ctx = require('treesitter-context')

ctx.setup {
    enable = true,
    throttle = true
}
EOF
