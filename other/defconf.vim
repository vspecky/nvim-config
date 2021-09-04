syntax on
filetype plugin indent on

set ts=4 sw=4

" Relative numbering
set rnu
" Current line number
set number
" Smart Indenting
set smartindent
" Don't wrap text
set nowrap
" Undo specs
set undodir=~/.config/nvim/undodir
set undofile
" No backup, for speed
set nobackup
" Don't show current mode cuz of vim-lightline
set noshowmode
" New windowsplits appear at the bottom
set splitbelow
" Spaces
set expandtab
" set .pl to prolog
let g:filetype_pl="prolog"
" Mouse
set mouse=a

set hidden

"set colorcolumn=84
set updatetime=300
set signcolumn=yes
set splitright
"set foldmethod=syntax
"set foldnestmax=2
"set showtabline=2

set guifont=Hack\ Regular\ Nerd\ Font\ Complete\ Mono:h12

autocmd BufNewFile,BufRead *.md set expandtab
autocmd FileType php setlocal autoindent

lua << EOF
vim.fn.sign_define("LspDiagnosticsSignError",
    {text = "", texthl = "GruvboxRed"})
vim.fn.sign_define("LspDiagnosticsSignWarning",
    {text = "", texthl = "GruvboxYellow"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
    {text = "", texthl = "GruvboxBlue"})
vim.fn.sign_define("LspDiagnosticsSignHint",
    {text = "", texthl = "GruvboxAqua"})
EOF
