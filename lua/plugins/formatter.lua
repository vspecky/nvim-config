local formatter = require "formatter"

formatter.setup {
    logging = true,
    log_level = vim.log.levels.DEBUG,
    filetype = {
        haskell = {
            function()
                return {
                    exe = "hindent",
                    stdin = true
                }
            end
        },

        rust = {
            function()
                return {
                    exe = "rustfmt",
                    args = {
                        "--edition 2021",
                    },
                    stdin = true,
                }
            end
        }
    }
}

