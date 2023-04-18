local dap = require "dap"
local rdap = require "rust-tools.dap"
local async = require "plenary.async"

--local extension_dir = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.8.1/"
--local codelldb = extension_dir .. "adapter/codelldb"
--local dylib = extension_dir .. "lldb/lib/liblldb.dylib"
local extension_dir = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension"
local codelldb = extension_dir .. "/adapter/codelldb"
local dylib = extension_dir .. "/lldb/lib/liblldb.dylib"

local input = async.wrap(
    function(prompt, callback)
        vim.ui.input(prompt, callback)
    end,
    2
);

dap.adapters.codelldb = rdap.get_codelldb_adapter(codelldb, dylib)

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            local val = input("Test input: ", function(choice) return choice end)
            vim.notify("Got value " .. val)
            local dir = vim.fn.getcwd() .. "/target/debug/" .. vim.fn.input("Name of executable: ")
            return dir
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = true,

        -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
        --
        --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        --
        -- Otherwise you might get the following error:
        --
        --    Error on launch: Failed to attach to the target process
        --
        -- But you should be aware of the implications:
        -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
        runInTerminal = false
    }
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
