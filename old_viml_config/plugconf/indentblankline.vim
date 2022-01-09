lua << EOF
local blankline = require('indent_blankline')
vim.opt.listchars = {
    eol = "↴",
}

blankline.setup {
    show_end_of_line = true,
    buftype_exclude = {
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
    filetype_exclude = {
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
    }
}
EOF

" let g:indentLine_fileTypeExclude = ['dashboard']
let g:indent_blankline_use_treesitter = v:false
