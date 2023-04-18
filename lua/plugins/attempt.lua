local attempt = require "attempt"

attempt.setup {
    ext_options = {"rs", "js", "py"},
    run = {
        py = { "w !python3" },
        js = { "w !node" },
        rs = { 'w', '!rustc %:p -o %:p:r && %:p:r && rm %:p:r' }
    },
}
