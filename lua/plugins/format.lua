local format = require("lsp-format")

format.setup {
    go = {
        {
            cmd = {"gofmt -w", "goimports -w"},
            tempfile_postfix = ".tmpgo"
        }
    },
}

vim.cmd [[
    augroup Format
        autocmd!
        autocmd BufWritePost * FormatWrite
    augroup END
]]
