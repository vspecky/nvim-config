set termguicolors
syntax enable
set background=dark

" GRUVBOX

"let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox

" DRACULA
"let g:dracula_colorterm = 2
"colorscheme dracula

" NEON
let g:neon_style = "dark"
let g:neon_italic_comment = 1
let g:neon_italic_boolean = 1
let g:neon_bold = 1
"let g:neon_italic_variable = 1
let g:neon_transparent = 0
colorscheme neon

" hi LspDiagnosticsVirtualTextError guifg=Black ctermfg=Black guibg=#b5595d

" hi LspDiagnosticsVirtualTextHint guifg=Black ctermfg=Black guibg=#4db5bd
" AYU
"let ayucolor="dark"
"colorscheme ayu

" CODEDARK
"colorscheme codedark
" hi Normal guibg=none ctermbg=none
" hi LineNr guibg=none ctermbg=none
" hi Folded guibg=none ctermbg=none
" hi NonText guibg=none ctermbg=none
" hi SpecialKey guibg=none ctermbg=none
" hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
" hi EndOfBuffer guibg=none ctermbg=none
" hi Cursor guifg=black ctermfg=black

" unlet g:cursorword_highlight
hi! CursorWord cterm=bold gui=bold

"highlight Normal ctermbg=NONE guibg=NONE
"highlight NonText ctermbg=NONE guibg=NONE
"highlight SignColumn ctermbg=NONE guibg=NONE
"highlight LineNr ctermbg=NONE guibg=NONE
"highlight clear LineNr
"highlight clear SignColumn
