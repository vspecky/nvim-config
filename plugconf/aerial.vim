lua << EOF
vim.g.aerial = {
    default_direction = "prefer_left",
    min_width = 28,
    open_automatic = {
        ['_'] = false,
        python = true
    }
}
EOF
