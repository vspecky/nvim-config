local bufferline = require "bufferline"

bufferline.setup {
    options = {
        numbers = function(opts)
            return string.format('%s', opts.ordinal)
        end,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " "
                    or (e == "warning" and " " or "" )
                s = s .. n .. sym
            end
            return s
        end,
        separator_style = "thin",
        diagnostics_update_in_insert = true,
    }
}
