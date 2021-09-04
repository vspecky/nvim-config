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
        "help"
    },
    filetype_exclude = {
        "terminal",
        "aerial",
        "dashboard",
        "NvimTree",
        "help"
    }
}
EOF

let g:indentLine_fileTypeExclude = ['dashboard']
let g:indent_blankline_use_treesitter = v:true
