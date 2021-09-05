lua << EOF
local rest = require('rest-nvim')

rest.setup {
    highlight = {
        enabled = true,
        timeout = 1000
    }
}
EOF
