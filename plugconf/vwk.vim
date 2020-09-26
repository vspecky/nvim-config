let g:which_key_map = {}

let g:which_key_map['q'] = {
    \ 'name': '+quit',
    \ 'Q': 'quit-without-saving',
    \ 'q': 'quit-normally',
    \ 'w': 'write-and-quit',
    \ }

let g:which_key_map['t'] = {
    \ 'name': '+tab',
    \ '1': 'tab-1',
    \ '2': 'tab-2',
    \ '3': 'tab-3',
    \ '4': 'tab-4',
    \ '5': 'tab-5',
    \ '6': 'tab-6',
    \ '7': 'tab-7',
    \ '8': 'tab-8',
    \ '9': 'tab-9',
    \ 'n': 'new-tab',
    \ 'j': 'next-tab',
    \ 'k': 'prev-tab',
    \ 'h': 'first-tab',
    \ 'l': 'last-tab',
    \ }

let g:which_key_map['s'] = {
    \ 'name': '+scroll',
    \ 'h': 'scroll-left',
    \ 'l': 'scroll-right',
    \ 'c': 'center-cursor',
    \ 'j': 'scroll-down',
    \ 'k': 'scroll-up',
    \ }

let g:which_key_map['o'] = {
    \ 'name': '+open',
    \ 'd': 'ranger',
    \ 't': 'terminal',
    \ }

let g:which_key_map['C'] = {
    \ 'name': '+cargo',
    \ 'c': 'cargo-check',
    \ 'r': 'cargo-run',
    \ 'b': 'cargo-build',
    \ 't': 'cargo-test',
    \ }

call which_key#register('<space>', 'g:which_key_map')
