local dapui = require 'dapui'

dapui.setup {
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
        -- Use a table to apply multiple mappings
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
    },
    layouts = {
        {
            elements = {
                "scopes",
                "breakpoints",
            },
            size = 40,
            position = "right"
        },
        {
            elements = {
                "console",
                "stacks"
            },
            size = 10,
            position = "bottom"
        }
    },
    floating = {
        max_height = 0.3, -- These can be integers or a float between 0 and 1.
        max_width = 0.3, -- Floats will be treated as percentage of your screen.
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 }
}
