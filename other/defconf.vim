
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
" set .pl to prolog
let g:filetype_pl="prolog"

autocmd BufNewFile,BufRead *.md set expandtab
autocmd FileType php setlocal autoindent
