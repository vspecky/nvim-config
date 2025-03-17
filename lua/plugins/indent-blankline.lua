local blankline = require 'ibl'

vim.opt.list = false
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

vim.cmd [[ hi IndentBlankLineCtx guifg=#fabd2f gui=nocombine ]]
--vim.cmd [[ hi IndentBlankLineContextStart guifg=#fabd2f gui=nocombine ]]

blankline.setup {
    exclude = {
        buftypes = {
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
        filetypes = {
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
}

vim.g.indent_blankline_use_treesitter = false
