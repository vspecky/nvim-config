lua << EOF
local transparent = require("transparent")

transparent.setup {
    enable = true,
    extra_groups = {
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
    },
    exclude = {}
}
EOF

let g:transparent_enabled = v:false
