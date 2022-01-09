lua << EOF
local format = require("format")

format.setup {
    go = {
        {
            cmd = {"gofmt -w", "goimports -w"},
            tempfile_postfix = ".tmpgo"
        }
    },
}
EOF

augroup Format
    autocmd!
    autocmd BufWritePost * FormatWrite
augroup END
