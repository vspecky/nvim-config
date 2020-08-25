
" Disable arrow keys cuz fuck that
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>

let mapleader = " "

" Key maps
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>

" Outline map
nnoremap <leader>fd :Outline<cr>

" Window switching
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

" Window Switching with resizing
nnoremap <leader>rh :wincmd h<cr> :vertical resize 125<cr>
nnoremap <leader>rj :wincmd j<cr> :resize 80<cr>
nnoremap <leader>rk :wincmd k<cr> :resize 80<cr>
nnoremap <leader>rl :wincmd l<cr> :vertical resize 125<cr>

" Tabbing
nnoremap tn :tabnew<space>
nnoremap tj :tabnext<cr>
nnoremap tk :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" Bracketing
inoremap <C-x> {<cr><bs>}<esc>ko

" Horizontal panning
nnoremap <leader>a zH
nnoremap <leader>d zL

" Vertical panning
nnoremap <leader>s zz

" Moving up/down panning
nnoremap <C-k> 26j zz
nnoremap <C-i> 26k zz

" Open Terminal
nnoremap <leader>ot :split<cr>:resize 20<bar>:terminal<cr>i

" Multiline comments
inoremap <C-a> /*<cr>/<esc>ka<space>

" Cargo commands
nnoremap <leader>Cc :Ccheck<cr>
nnoremap <leader>Cr :Crun<cr>
nnoremap <leader>Cb :Cbuild<cr>
nnoremap <leader>Ct :Ctest<cr>

" Toggle vim-rainbow
nnoremap <leader>tr :RainbowToggle<cr>
" Toggle Indent Guides
nnoremap <leader>ti :IndentGuidesToggle<cr>

" Vim Ranger
nnoremap <leader>od :RnvimrToggle<cr>
