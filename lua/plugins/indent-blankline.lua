local blankline = require 'indent_blankline'
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
    }
}

vim.g.indent_blankline_use_treesitter = false
