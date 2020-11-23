
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
nnoremap <silent> <leader>Q :q!<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>W :wq<cr>

" Outline map
nnoremap <silent> <leader>fd :Outline<cr>

" Window switching
nnoremap <silent> <leader>h :wincmd h<cr>
nnoremap <silent> <leader>j :wincmd j<cr>
nnoremap <silent> <leader>k :wincmd k<cr>
nnoremap <silent> <leader>l :wincmd l<cr>

" Tabbing
nnoremap <silent> <leader>tn :tabnew<space>
nnoremap <silent> <leader>tj :tabnext<cr>
nnoremap <silent> <leader>tk :tabprev<cr>
nnoremap <silent> <leader>th :tabfirst<cr>
nnoremap <silent> <leader>tl :tablast<cr>

nnoremap <silent> <leader>t1 1gt
nnoremap <silent> <leader>t2 2gt
nnoremap <silent> <leader>t3 3gt
nnoremap <silent> <leader>t4 4gt
nnoremap <silent> <leader>t5 5gt
nnoremap <silent> <leader>t6 6gt
nnoremap <silent> <leader>t7 7gt
nnoremap <silent> <leader>t8 8gt
nnoremap <silent> <leader>t9 9gt

" Bracketing
inoremap <C-x> {<cr><bs>}<esc>ko

" Horizontal panning
nnoremap <silent> <leader>sh zH
nnoremap <silent> <leader>sl zL

" Vertical panning
nnoremap <silent> <leader>sc zz

" Moving up/down panning
nnoremap <silent> <leader>sj 26j zz
nnoremap <silent> <leader>sk 26k zz

" Terminal
nnoremap <silent> <leader>ot :split<cr>:resize 20<bar>:terminal<cr>i
tnoremap <C-b> <C-\><C-n>

" Multiline comments
inoremap <C-a> /*<cr>/<esc>ka<space>

" Cargo commands
nnoremap <leader>Cc :Ccheck<cr>
nnoremap <leader>Cr :Crun<cr>
nnoremap <leader>Cb :Cbuild<cr>
nnoremap <leader>Ct :Ctest<cr>

" Vim Ranger
nnoremap <leader>od :RnvimrToggle<cr>

" Vim Which Key
nnoremap <silent> <leader> :WhichKey '<space>'<cr>

" CoC (LSP)
nnoremap <silent> <leader>oe :CocCommand explorer<cr>
nnoremap <silent> <leader>of :CocCommand explorer --preset floating<cr>

" Startify
nnoremap <silent> <leader>ss :SSave<cr>
