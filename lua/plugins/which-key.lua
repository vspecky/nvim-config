local wk = require 'which-key'

vim.g.mapleader = " "

wk.setup {

}

wk.register({
    ["<leader>"] = {
        -- Save and Quit
        w = {"<cmd>w<cr>", "Save file"},
        W = {"<cmd>wq<cr>", "Save file and quit"},
        q = {"<cmd>q<cr>", "Quit"},
        Q = {"<cmd>q!<cr>", "Force quit"},

        -- Clipboard
        p = {'"+p', "Paste from clipboard"},
        P = {'"+P', "Paste from clipboard here"},
        Y = {'"+yg_', "Yank entire line to clipboard"},

        -- Wincmds
        ["<left>"] = {"<cmd>wincmd h<cr>", "Move to left pane"},
        ["<down>"] = {"<cmd>wincmd j<cr>", "Move to pane below"},
        ["<up>"] = {"<cmd>wincmd k<cr>", "Move to pane above"},
        ["<right>"] = {"<cmd>wincmd l<cr>", "Move to right pane"},

        -- Misc
        ["<leader>"] = {"<C-^>", "Previous buffer"},

        -- Tabbing
        t = {
            name = "+Tabs",
            n = {"<cmd>tabnew<cr>", "New tab"},
            j = {"<cmd>tabnext<cr>", "Move to next tab"},
            k = {"<cmd>tabprev<cr>", "Move to previous tab"},
            h = {"<cmd>tabfirst<cr>", "Move to first tab"},
            l = {"<cmd>tablast<cr>", "Move to last tab"},

            ['1'] = {"1gt", "Move to first tab"},
            ['2'] = {"2gt", "Move to second tab"},
            ['3'] = {"3gt", "Move to third tab"},
            ['4'] = {"4gt", "Move to fourth tab"},
            ['5'] = {"5gt", "Move to fifth tab"},
            ['6'] = {"6gt", "Move to sixth tab"},
            ['7'] = {"7gt", "Move to seventh tab"},
            ['8'] = {"8gt", "Move to eighth tab"},
            ['9'] = {"9gt", "Move to ninth tab"}
        },

        -- LSP
        l = {
            name = "+Lsp",
            D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Goto declaration"},
            d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Goto definition"},
            i = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "Goto implementation"},
            t = {"<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type definition"},
            n = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
            r = {"<cmd>lua vim.lsp.buf.references()<cr>", "List references"},
            e = {"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>", "List line diagnostics"},
            k = {"<cmd>lua vim.lsp.buf.hover()<cr>", "Lsp Hover"},
            -- p = {"<cmd>Lspsaga preview_definition<cr>", "Preview definition"},
            -- a = {"<cmd>Lspsaga code_action<cr>", "Code action"},
            ['['] = {"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Goto previous diagnostic"},
            [']'] = {"<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Goto next diagnostic"},

            w = {
                name = "+Workspace",
                a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add workspace folder"},
                r = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove workspace folder"},
                l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "List workspace folders"}
            },

            p = {
                name = "+Preview",
                d = {"<cmd>lua require('goto-preview').goto_preview_definition()<cr>", "Preview definition"},
                i = {"<cmd>lua require('goto-preview').goto_preview_implementation()<cr>", "Preview implementation"},
                r = {"<cmd>lua require('goto-preview').goto_preview_references()<cr>", "Preview references"},
                q = {"<cmd>lua require('goto-preview').close_all_win()<cr>", "Close all previews"},
            }
        },

        -- Commenting
        c = {
            name = "+Commenting",
            c = {"<plug>NERDCommenterComment", "Comment line"},
            u = {"<plug>NERDCommenterUncomment", "Uncomment line"},
            t = {"<plug>NERDCommenterToggle", "Toggle line comment"},
            s = {"<plug>NERDCommenterSexy", "Comment line 'sexily'"},
            d = {"<cmd>Pydocstring<cr>", "Insert Pydocstring (Python only)"}
        },

        -- Buffers
        b = {
            name = "+Buffers",
            ["]"] = {"<cmd>BufferLineCycleNext<cr>", "Switch to next buffer"},
            ["["] = {"<cmd>BufferLineCyclePrev<cr>", "Switch to previous buffer"},
            ["}"] = {"<cmd>BufferLineMoveNext<cr>", "Move current buffer to right"},
            ["{"] = {"<cmd>BufferLineMovePrev<cr>", "Move current buffer to left"},
            p = {"<cmd>BufferLinePick<cr>", "Pick buffer to switch"},
            d = {"<cmd>BufferLinePickClose<cr>", "Pick buffer to delete"}
        },

        -- Git
        g = {
            name = "+Git",
            s = {"<cmd>Gitsigns stage_hunk<cr>", "Stage hunk"},
            u = {"<cmd>Gitsigns undo_stage_hunk<cr>", "Undo stage hunk"},
            r = {"<cmd>Gitsigns reset_hunk<cr>", "Reset hunk"},
            S = {"<cmd>Gitsigns stage_buffer<cr>", "Stage buffer"},
            U = {"<cmd>Gitsigns reset_buffer_index<cr>", "Reset buffer index"},
            R = {"<cmd>Gitsigns reset_buffer<cr>", "Reset buffer"},
            p = {"<cmd>Gitsigns preview_hunk<cr>", "Preview hunk"},
            b = {"<cmd>lua require'gitsigns'.blame_line{full=true}<cr>", "Line blame"},
            d = {"<cmd>call ToggleDiffView(v:count)<cr>", "Toggle diff view"},
        },

        -- Find
        f = {
            name = "+Search",
            f = {"<cmd>Telescope find_files<cr>", "Search file by path"},
            g = {"<cmd>Telescope live_grep<cr>", "Search file by contents"},
            b = {"<cmd>Telescope buffers<cr>", "Search buffer"},
            m = {"<cmd>Telescope man_pages<cr>", "Search man pages"},
            r = {"<cmd>Telescope lsp_references<cr>", "Search lsp references"},
            d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Search document diagnostics"},
            s = {"<cmd>Telescope lsp_document_symbols<cr>", "Search lsp symbols"}
        },

        -- Debugger
        d = {
            name = "+Debugger",
            b = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle breakpoint"},
            p = {"<cmd>lua require'dap'.run_to_cursor()<cr>", "Run till cursor"},
            c = {"<cmd>lua require'dap'.continue()<cr>", "Continue"},
            q = {"<cmd>lua require'dap'.close()<cr>", "Close debugger"},
            r = {"<cmd>lua require'dap'.repl.open()<cr>", "Open repl"},
            i = {"<cmd>lua require'dap'.step_into()<cr>", "Step into"},
            o = {"<cmd>lua require'dap'.step_over()<cr>", "Step over"},
            u = {
                name = "+UI",
                o = {"<cmd>lua require'dapui'.toggle()<cr>", "Open full debugger ui"},
                t = {"<cmd>lua require'dapui'.toggle('tray')<cr>", "Open debugger tray"},
                s = {"<cmd>lua require'dapui'.toggle('sidebar')<cr>", "Open debugger sidebar"}
            }
        },

        -- Open
        o = {
            name = "+Open",
            e = {":NvimTreeToggle<cr>", "Toggle nvimtree"},
            r = {"<cmd>Rg<cr>", "Ripgrep"},
            t = {"<cmd>TroubleToggle<cr>", "Toggle trouble"},
            a = {"<cmd>AerialToggle!<cr>", "Toggle aerial"},
            s = {"<cmd>SymbolsOutline<cr>", "Toggle symbols-outline"},
            v = {"<cmd>lua toggle_venn()<cr>", "Toggle venn"}
        },

        -- Rest client
        r = {
            name = "+Rest",
            r = {"<Plug>RestNvim", "Execute request"},
            p = {"<Plug>RestNvimPreview", "Preview curl command"},
            a = {"<Plug>RestNvimLast", "Re-run last request"}
        },

        -- Spectre
        s = {
            name = "+Replace",
            s = {"<cmd>lua require('spectre').open()<cr>", "Search and replace"},
            w = {"<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Search word"},
            f = {"<cmd>lua require('spectre').open_file_search()<cr>", "Search in file"}
        }
    }
})
