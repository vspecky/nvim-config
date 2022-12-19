local blankline = require 'indent_blankline'

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

vim.cmd [[ hi IndentBlankLineCtx guifg=#fabd2f gui=nocombine ]]
--vim.cmd [[ hi IndentBlankLineContextStart guifg=#fabd2f gui=nocombine ]]

blankline.setup {
    space_char_blankline = " ",
    show_end_of_line = false,
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
        "nvimd",
        "w3m",
        "haskell"
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
        "nvimd",
        "w3m",
        "haskell"
    },
}

vim.g.indent_blankline_use_treesitter = false
