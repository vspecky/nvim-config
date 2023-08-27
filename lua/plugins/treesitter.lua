local treesitter_conf = require('nvim-treesitter.configs')

local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
parser_configs.http = {
    install_info = {
        url = "https://github.com/NTBBloodbath/tree-sitter-http",
        files = { "src/parser.c" },
        branch = "main",
    },
}

treesitter_conf.setup {
    ensure_installed = "all",
    highlight = {
        enable = true
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = false,
    },
    rainbow = {
        enable = false,
        extended_mode = false,
        --colors = {
            --"Green",
            --"Yellow",
            --"Blue",
            --"Magenta",
            --"Cyan",
            --"White"
        colors = {
            "#d3869b",
            "#a89984",
            "#b16286",
            "#d79921",
            "#689d6a",
            "#d65d0e",
            "#458588",
        }
        --termcolors = {
            --"Green",
            --"Yellow",
            --"Blue",
            --"Magenta",
            --"Cyan",
            --"White"
        --}
    }
}

