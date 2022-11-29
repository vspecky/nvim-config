local rust = require "rust-tools"
local rdap = require "rust-tools.dap"
local navic = require "nvim-navic"

local extension_dir = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension"
local codelldb = extension_dir .. "/adapter/codelldb"
local dylib = extension_dir .. "/lldb/lib/liblldb.dylib"

rust.setup {
    tools = {
        inlay_hints = {
            auto = true,
        },
    },
    server = {
        settings = {
            ["rust-analyzer"] = {
                procMacro = {
                    enable = true
                },
                cargo = {
                    features = "all"
                }
            }
        },
        on_attach = function(client, bufnr)
            if client.server_capabilities.documentSymbolProvider then
                navic.attach(client, bufnr)
            end

            require('vim.lsp.protocol').CompletionItemKind = {
                ' (text)', -- Text
                ' (method)', -- Method
                ' (func)', -- Function
                ' (constructor)', -- Constructor
                ' (field)', -- Field
                ' (var)', -- Variable
                ' (class)', -- Class
                'ﰮ (interface)', -- Interface
                ' (module)', -- Module
                ' (prop)', -- Property
                ' (unit)', -- Unit
                ' (val)', -- Value
                ' (enum)', -- Enum
                ' (keyword)', -- Keyword
                '﬌ (snip)', -- Snippet
                ' (color)', -- Color
                ' (file)', -- File
                ' (ref)', -- Reference
                ' (folder)', -- Folder
                ' (enum_member)', -- EnumMember
                ' (const)', -- Constant
                ' (struct)', -- Struct
                ' (event)', -- Event
                'ﬦ (operator)', -- Operator
                ' (typeparam)', -- TypeParameter
            }
        end
    },
    dap = {
        adapter = rdap.get_codelldb_adapter(codelldb, dylib)
    }
}
