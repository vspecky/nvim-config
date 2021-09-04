let g:pydocstring_formatter = 'numpy'

autocmd FileType python nnoremap <buffer><silent> <leader>cd <Plug>(pydocstring)
