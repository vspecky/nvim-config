function! FilenameForLightline()
    return expand("%")
endfunction

let g:lightline#bufferline#min_buffer_count = 2
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#show_number = 2

let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ] 
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'filename': 'FilenameForLightline'
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ }
    \ }
