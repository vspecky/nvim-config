local formatter = require "formatter"

formatter.setup {
    logging = false,
    log_level = vim.log.levels.DEBUG,
    filetype = {
        haskell = {
            function()
                return {
                    exe = "hindent",
                    stdin = true
                }
            end
        }
    }
}
