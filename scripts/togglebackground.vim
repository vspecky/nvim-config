function ToggleBackgroundOfEditor()
    let &background = &background == "dark" ? "light" : "dark"
endfunction

nnoremap <silent> <F12> :call ToggleBackgroundOfEditor()<cr>
inoremap <silent> <F12> :call ToggleBackgroundOfEditor()<cr>
vnoremap <silent> <F12> :call ToggleBackgroundOfEditor()<cr>
