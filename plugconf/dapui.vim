lua << EOF
local dapui = require('dapui')

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
    sidebar = {
        open_on_start = false,
        -- You can change the order of elements in the sidebar
        elements = {
            -- Provide as ID strings or tables with "id" and "size" keys
            {
                id = "scopes", size = 0.40, -- Can be float or integer > 1
            },
            { id = "breakpoints", size = 0.05 },
            { id = "stacks", size = 0.40 },
            -- { id = "watches", size = 00.25 },
        },
        width = 50,
        position = "right", -- Can be "left" or "right"
    },
    tray = {
        open_on_start = false,
        elements = { "repl",
            { id = "watches", size = 0.50 },
        },
        height = 10,
        position = "bottom", -- Can be "bottom" or "top"
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
EOF
