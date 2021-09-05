lua << EOF
vim.g.aerial = {
    default_direction = "left",
    min_width = 28,
    open_automatic = {
        ['_'] = false,
        python = true
    },
    open_automatic_min_symbols = 20
}
EOF
