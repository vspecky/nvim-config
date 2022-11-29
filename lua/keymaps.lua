vim.g.mapleader = " "

local M = {}

local nnoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, {noremap = true, silent = true})
end

local nmap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, {noremap = false, silent = true})
end

local inoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('i', lhs, rhs, {noremap = true, silent = true})
end

local tnoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('t', lhs, rhs, {noremap = true, silent = true})
end

local vnoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('v', lhs, rhs, {noremap = true})
end

local vmap = function(lhs, rhs)
    vim.api.nvim_set_keymap('v', lhs, rhs, {silent = true})
end

-- No arrow keys in insert mode
inoremap("<up>", "<nop>")
inoremap("<down>", "<nop>")
inoremap("<left>", "<nop>")
inoremap("<right>", "<nop>")

-- Easy Write/Quit
nnoremap("<leader>Q", "<cmd>q!<cr>")
nnoremap("<leader>q", "<cmd>q<cr>")
nnoremap("<leader>w", "<cmd>w<cr>")
nnoremap("<leader>W", "<cmd>wq<cr>")

-- Window resizing
nmap("<C-up>", "<cmd>resize +1<cr>")
nmap("<C-down>", "<cmd>resize -1<cr>")
nmap("<C-left>", "<cmd>vertical resize -1<cr>")
nmap("<C-right>", "<cmd>vertical resize +1<cr>")

-- Window switching
nmap("H", "<cmd>wincmd h<cr>")
nmap("J", "<cmd>wincmd j<cr>")
nmap("K", "<cmd>wincmd k<cr>")
nmap("L", "<cmd>wincmd l<cr>")

-- Tabbing
nnoremap("<leader>tn", ":tabnew<space>")
nnoremap("<leader>tj", ":tabnext<cr>")
nnoremap("<leader>tk", ":tabprev<cr>")
nnoremap("<leader>th", ":tabfirst<cr>")
nnoremap("<leader>tl", ":tablast<cr>")

nnoremap("<leader>t1", "1gt")
nnoremap("<leader>t2", "2gt")
nnoremap("<leader>t3", "3gt")
nnoremap("<leader>t4", "4gt")
nnoremap("<leader>t5", "5gt")
nnoremap("<leader>t6", "6gt")
nnoremap("<leader>t7", "7gt")
nnoremap("<leader>t8", "8gt")
nnoremap("<leader>t9", "9gt")

-- Bracketing
inoremap("<C-x>", "{<cr><bs>}<esc>ko")

-- Horizontal panning
nnoremap("<C-h>", "zH")
nnoremap("<C-l>", "zL")

-- Centering panning
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

tnoremap("<C-b>", "<C-\\><C-n>")

-- Nvim Tree
nnoremap("<leader>oe", ":NvimTreeToggle<cr>")

-- Keep Visual Mode selections when indenting
vnoremap(">", ">gv")
vnoremap("<", "<gv")

-- Clipboard support
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+yg_")

nnoremap("<leader>p", "\"+p")
nnoremap("<leader>P", "\"+P")

-- Toggle between buffers
nnoremap("<leader><leader>", "<C-^>")

-- Ripgrep
nnoremap("<leader>or", "<cmd>Rg<cr>")

-- NERDCommenter
nmap("<leader>cc", "<plug>NERDCommenterComment")
vmap("<leader>cc", "<plug>NERDCommenterComment")
nmap("<leader>cu", "<plug>NERDCommenterUncomment")
vmap("<leader>cu", "<plug>NERDCommenterUncomment")
nmap("<leader>ct", "<plug>NERDCommenterToggle")
vmap("<leader>ct", "<plug>NERDCommenterToggle")
nmap("<leader>cs", "<plug>NERDCommenterSexy")
vmap("<leader>cs", "<plug>NERDCommenterSexy")

-- Lsp
nnoremap("<leader>lk", "<cmd>lua vim.lsp.buf.hover()<cr>")
nnoremap("<leader>le", "<cmd>lua vim.diagnostic.open_float()<cr>")

-- Format
nnoremap("<leader>lf", "<cmd>Format<cr>")

-- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fm", "<cmd>Telescope man_pages<cr>")
nnoremap("<leader>fr", "<cmd>Telescope lsp_references<cr>")
nnoremap("<leader>fd", "<cmd>Telescope lsp_document_diagnostics<cr>")
nnoremap("<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>")

-- Bufferline
nnoremap("<leader>bp", ":BufferLinePick<cr>")
nnoremap("<leader>bd", ":BufferLinePickClose<cr>")

nnoremap("<leader>b]", "<cmd>BufferLineCycleNext<cr>")
nnoremap("<leader>b[", "<cmd>BufferLineCyclePrev<cr>")
nnoremap("<right>", "<cmd>BufferLineCycleNext<cr>")
nnoremap("<left>", "<cmd>BufferLineCyclePrev<cr>")

nnoremap("<leader>b}", "<cmd>BufferLineMoveNext<cr>")
nnoremap("<leader>b{", "<cmd>BufferLineMovePrev<cr>")

-- Toggleterm
nnoremap("<c-t>", "<Cmd>exe v:count1 . \"ToggleTerm dir=.\"<CR>")
tnoremap("<c-t>", "<Esc><Cmd>exe v:count1 . \"ToggleTerm dir=.\"<CR>")

-- Trouble
nnoremap("<leader>ot", "<cmd>TroubleToggle<cr>")

-- DAP (Debugger)
nnoremap("<F5>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
nnoremap("<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")

nnoremap("<F8>", "<cmd>lua require'dap'.run_to_cursor()<cr>")
nnoremap("<leader>dp", "<cmd>lua require'dap'.run_to_cursor()<cr>")

nnoremap("<F9>", "<cmd>lua require'dap'.continue()<cr>")
nnoremap("<leader>dc", "<cmd>lua require'dap'.continue()<cr>")

nnoremap("<F10>", "<cmd>lua require'dap'.close()<cr>")
nnoremap("<leader>dq", "<cmd>lua require'dap'.close()<cr>")

nnoremap("<F11>", "<cmd>lua require'dap'.repl.open()<cr>")
nnoremap("<leader>dr", "<cmd>lua require'dap'.repl.open()<cr>")

nnoremap("<F6>", "<cmd>lua require'dap'.step_over()<cr>")
nnoremap("<leader>do", "<cmd>lua require'dap'.step_over()<cr>")

nnoremap("<F7>", "<cmd>lua require'dap'.step_into()<cr>")
nnoremap("<leader>di", "<cmd>lua require'dap'.step_into()<cr>")

-- DAP UI
nnoremap("<leader>duo", "<cmd>lua require'dapui'.toggle()<cr>")
nnoremap("<leader>dut", "<cmd>lua require'dapui'.toggle('tray')<cr>")
nnoremap("<leader>dus", "<cmd>lua require'dapui'.toggle('sidebar')<cr>")

-- Symbols Outline
nnoremap("<leader>os", "<cmd>SymbolsOutline<cr>")

-- Broot
nnoremap("<leader>ob", "<cmd>Broot<cr>")

-- Pydocstring
vim.cmd [[ autocmd FileType python nnoremap <silent> <leader>cd <cmd>Pydocstring<cr> ]]

-- Rest client
nnoremap("<leader>rr", "<Plug>RestNvim")
nnoremap("<leader>rp", "<Plug>RestNvimPreview")
nnoremap("<leader>ra", "<Plug>RestNvimLast")

-- Spectre
nnoremap("<leader>ss", "<cmd>lua require('spectre').open()<cr>")
nnoremap("<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>")
nnoremap("<leader>sf", "<cmd>lua require('spectre').open_file_search()<cr>")

-- Goto preview
nnoremap("<leader>lpd", "<cmd>lua require('goto-preview').goto_preview_definition()<cr>")
nnoremap("<leader>lpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>")
nnoremap("<leader>lpr", "<cmd>lua require('goto-preview').goto_preview_references()<cr>")
nnoremap("<leader>lpq", "<cmd>lua require('goto-preview').close_all_win()<cr>")

-- Gitsigns
nnoremap("<leader>gs", "<cmd>Gitsigns stage_hunk<cr>")
nnoremap("<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>")
nnoremap("<leader>gr", "<cmd>Gitsigns reset_hunk<cr>")
nnoremap("<leader>gS", "<cmd>Gitsigns stage_buffer<cr>")
nnoremap("<leader>gU", "<cmd>Gitsigns reset_buffer_index<cr>")
nnoremap("<leader>gR", "<cmd>Gitsigns reset_buffer<cr>")
nnoremap("<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
nnoremap("<leader>gb", "<cmd>lua require'gitsigns'.blame_line{full=true}<cr>")

-- Diffview
local diffview_open = false

local function toggle_diffview(cnt)
    if not diffview_open then
        diffview_open = true
        if cnt == 0 then
            vim.cmd("DiffviewOpen")
        else
            vim.cmd("DiffviewOpen HEAD~" .. cnt)
        end
    else
        diffview_open = false
        vim.cmd("DiffviewClose")
    end
end

nnoremap("<leader>gd", "<cmd>lua require'keymaps'.toggle_diffview(vim.v.count)<cr>")

M.toggle_diffview = toggle_diffview
return M
