local opt = vim.opt
local fn = vim.fn
local g = vim.fn
local cmd = vim.cmd

-- Tabwidth = 4
opt.tabstop = 4
opt.shiftwidth = 4

-- Line numbers
opt.number = true

-- Relative line numbers
opt.relativenumber = true

-- Smart indenting
opt.smartindent = true

-- No wrapping
opt.wrap = false

-- Undo
opt.undodir = vim.fn.expand("$HOME") .. "/.config/nvim/undodir"
opt.undofile = true

-- No backup for speed
opt.backup = false

-- Don't show mode (lualine)
opt.showmode = false

-- Window split config
opt.splitbelow = true
opt.splitright = true

-- Spaces > Tabs
opt.expandtab = true

-- Enable mouse support
opt.mouse = "a"

-- Support hidden windows
opt.hidden = true

-- Shell
opt.shell = "/bin/zsh"

-- Colorscheme
opt.termguicolors = true
opt.background = "dark"
g.gruvbox_material_palette = "material"
g.gruvbox_material_background = "medium"
g.gruvbox_material_enable_bold = 1
cmd [[ colorscheme gruvbox-material ]]
cmd [[ hi SignColumn guibg=none ctermbg=none ]]

-- Update time = 300ms
opt.updatetime = 300

-- Allow sign column
opt.signcolumn = "yes"

-- Font
opt.guifont = "Hack Regular Nerd Font Complete Mono:h12"

-- File-wise settings
cmd [[
    autocmd BufNewFile,BufRead *.tsx set ts=2 sw=2
    autocmd BufNewFile,BufRead *.jsx set ts=2 sw=2
    autocmd BufNewFile,BufRead *.purs set ts=2 sw=2
    autocmd BufNewFile,BufRead *.css set ts=4 sw=4
    autocmd BufNewFile,BufRead *.hs set ts=2 sw=2
    autocmd BufNewFile,BufRead *.go ASOff
    autocmd BufNewFile,BufRead *.nvimd set virtualedit=all
    autocmd BufNewFile,BufRead *.nvimd lua toggle_venn()
    autocmd BufNewFile,BufRead *.nvimd set filetype=nvimd
    autocmd BufNewFile,BufRead *.Jenkinsfile set filetype=groovy
    autocmd BufNewFile,BufRead *.qnt set filetype=quint
    autocmd BufNewFile,BufReadPost *.qnt runtime syntax/quint.vim
    autocmd FileType quint lua vim.lsp.start({name = 'quint', cmd = {'quint-language-server', '--stdio'}, root_dir = vim.fs.dirname()})
    autocmd FileType php setlocal autoindent
    autocmd FileType make setlocal noexpandtab
]]

fn.sign_define("LspDiagnosticsSignError", {text = "", texthl = "GruvboxRed"})
fn.sign_define("LspDiagnosticsSignWarning", {text = "", texthl = "GruvboxYellow"})
fn.sign_define("LspDiagnosticsSignInformation", {text = "", texthl = "GruvboxBlue"})
fn.sign_define("LspDiagnosticsSignHint", {text = "", texthl = "GruvboxAqua"})

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

cmd [[
    iabbrev _cgamma <C-v>u0393
    iabbrev _tstile <C-v>u22A2
    iabbrev _membof <C-v>u2208
]]
