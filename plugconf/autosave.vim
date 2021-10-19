lua << EOF
local autosave = require('autosave')

autosave.setup {
    clean_command_line_interval = 500,
    on_off_commands = true,
    filetype_is_not = {
        "go"
    }
}

EOF
