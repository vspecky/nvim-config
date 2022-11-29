local dap = require "dap"

dap.adapters.codelldb = {
    type = 'server',
    host = "127.0.0.1",
    port = "13000",
    executable = {
        command = vim.fn.exepath("codelldb"),
        args = {"--port", "13000"}
    },
    name = "codelldb",
}

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            local dir = vim.fn.getcwd() .. "/target/debug/" .. vim.fn.input("Name of executable: ")
            print(dir)
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
