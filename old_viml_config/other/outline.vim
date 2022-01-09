
" Function for Rust Outline typedefs
function! s:outline_format(lists)
  for list in a:lists
    let linenr = list[2][:len(list[2])-3]
    let line = getline(linenr)
    let idx = stridx(line, list[0])
    let len = len(list[0])
    let fg = synIDattr(synIDtrans(hlID("LineNr")), 'fg', 'cterm')
    let bg = synIDattr(synIDtrans(hlID("LineNr")), 'bg', 'cterm')
    let list[0] = ''
          \ . printf("\x1b[%sm %4d \x1b[m ", '38;5;'.fg.';48;5;'.bg, linenr)
          \ . line[:idx-1]
          \ . printf("\x1b[%sm%s\x1b[m", "34", line[idx:idx+len-1])
          \ . line[idx+len:]
    let list = list[:2]
  endfor
  return a:lists
endfunction
function! s:outline_source(tag_cmds)
  if !filereadable(expand('%'))
    throw 'Save the file first'
  endif
  for cmd in a:tag_cmds
    let lines = split(system(cmd), "\n")
    if !v:shell_error
      break
    endif
  endfor
  if v:shell_error
    throw get(lines, 0, 'Failed to extract tags')
  elseif empty(lines)
    throw 'No tags found'
  endif
  return map(s:outline_format(map(lines, 'split(v:val, "\t")')), 'join(v:val, "\t")')
endfunction
function! s:outline_sink(lines)
  if !empty(a:lines)
    let line = a:lines[0]
    execute split(line, "\t")[2]
  endif
endfunction
function! s:outline(...)
  let args = copy(a:000)
  let tag_cmds = [
    \ printf('ctags -f - --sort=no --excmd=number --language-force=%s %s 2>/dev/null', &filetype, expand('%:S')),
    \ printf('ctags -f - --sort=no --excmd=number %s 2>/dev/null', expand('%:S'))]
  try
    return fzf#run(fzf#wrap('outline', {
      \ 'source':  s:outline_source(tag_cmds),
      \ 'sink*':   function('s:outline_sink'),
      \ 'options': '--tiebreak=index --reverse +m -d "\t" --with-nth=1 -n 1 --ansi --extended --prompt "Outline> "'}))
  catch
    echohl WarningMsg
    echom v:exception
    echohl None
  endtry
endfunction

" Outline command
command! -bang Outline call s:outline()
