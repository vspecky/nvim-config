lua << EOF
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
    rainbow = {
        enable = true,
        extended_mode = true
    }
}
EOF
