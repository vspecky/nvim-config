lua << EOF
local twilight = require('twilight')

twilight.setup {
    context = 20,
    expand = {
        "function",
        "method",
        "table",
        "if_statement",
        "variable"
    }
}
EOF
