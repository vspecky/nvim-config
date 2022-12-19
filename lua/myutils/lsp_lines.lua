local M = {}

function M.lsp_lines_toggle()
    local vline = vim.diagnostic.config().virtual_lines
    vim.diagnostic.config { virtual_lines = not vline }
    vim.diagnostic.config { virtual_text = vline }

    if not vline then
        print "virtual lines enabled"
    else
        print "virtual lines disabled"
    end
end

return M
