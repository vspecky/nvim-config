lua << EOF
local marks = require('marks')

marks.setup {
    excluded_filetypes = {
        "terminal",
        "aerial",
        "dashboard",
        "NvimTree",
        "help",
        "dapui_scopes",
        "dapui_breakpoints",
        "dapui_stacks",
        "dapui_watches",
        "dap-repl",
        "httpResult",
        "nvimd"
    },
}
EOF
