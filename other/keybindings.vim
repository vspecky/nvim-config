" Disable arrow keys cuz fuck that
nnoremap <silent> <up>    :resize +1<cr>
inoremap <up>    <nop>
nnoremap <silent> <down>  :resize -1<cr>
inoremap <down>  <nop>
nnoremap <silent> <left>  :vertical resize -1<cr>
inoremap <left>  <nop>
nnoremap <silent> <right> :vertical resize +1<cr>
inoremap <right> <nop>

" Key maps
nnoremap <silent> <leader>Q :q!<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>W :wq<cr>

" Outline map
"nnoremap <silent> <leader>fd :Outline<cr>

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
nnoremap <silent> <C-h> zH
nnoremap <silent> <C-l> zL

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
" nnoremap <leader>od :RnvimrToggle<cr>

" Vim Which Key
nnoremap <silent> <leader> :WhichKey '<space>'<cr>

" Nvim Tree
nnoremap <silent> <leader>oe :NvimTreeToggle<cr>

" Startify
nnoremap <silent> <leader>ss :SSave<cr>

" Keep Visual Mode selections when indenting
vnoremap > >gv
vnoremap < <gv

" " Horizontal Resizing
" nnoremap <silent> <C-K> :resize +5<cr>
" nnoremap <silent> <C-J> :resize -5<cr>

" " Vertical Resizing
" nnoremap <silent> <C-L> :vertical resize +5<cr>
" nnoremap <silent> <C-H> :vertical resize -5<cr>

" Clipboard support
vnoremap <silent> <leader>y "+y
nnoremap <silent> <leader>Y "+yg_

nnoremap <silent> <leader>p "+p
nnoremap <silent> <leader>P "+P

" Toggle between buffers
nnoremap <silent> <leader><leader> <C-^>

" FZF File and Buffer search
" nnoremap <silent> <leader>of :Files<cr>
" nnoremap <silent> <leader>ob :Buffers<cr>

" Ripgrep
nnoremap <silent> <leader>or :Rg<cr>

" NERDCommenter
nmap <silent> <leader>cc <plug>NERDCommenterComment
vmap <silent> <leader>cc <plug>NERDCommenterComment
nmap <silent> <leader>cu <plug>NERDCommenterUncomment
vmap <silent> <leader>cu <plug>NERDCommenterUncomment

" Lspsaga
nnoremap <silent> <leader>ca <cmd>Lspsaga code_action<cr>
vnoremap <silent> <leader>ca <cmd><C-U>Lspsaga range_code_action<cr>

nnoremap <silent> K <cmd>Lspsaga hover_doc<cr>
nnoremap <silent> gs <cmd>Lspsaga signature_help<cr>
nnoremap <silent> gr <cmd>Lspsaga rename<cr>
nnoremap <silent> gp <cmd>Lspsaga preview_definition<cr>

nnoremap <silent> <leader>e <cmd>Lspsaga show_line_diagnostics<cr>

" Telescope
nnoremap <silent> <leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent> <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <silent> <leader>fb <cmd>Telescope buffers<cr>
nnoremap <silent> <leader>fm <cmd>Telescope man_pages<cr>
nnoremap <silent> <leader>fr <cmd>Telescope lsp_references<cr>
nnoremap <silent> <leader>fd <cmd>Telescope lsp_document_diagnostics<cr>

" Bufferline
nnoremap <silent> <leader>bp :BufferLinePick<cr>
nnoremap <silent> <leader>bd :BufferLinePickClose<cr>

nnoremap <silent> <leader>] :BufferLineCycleNext<cr>
nnoremap <silent> <leader>[ :BufferLineCyclePrev<cr>

nnoremap <silent> <leader>} :BufferLineMoveNext<cr>
nnoremap <silent> <leader>{ :BufferLineMovePrev<cr>

" Toggleterm
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm dir=."<CR>
tnoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm dir=."<CR>

" Trouble
nnoremap <silent> <leader>od <cmd>TroubleToggle<cr>
" nnoremap <silent> <leader>dd <cmd>TroubleToggle lsp_document_diagnostics<cr>
" nnoremap <silent> <leader>dw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>

" DAP UI
nnoremap <silent> <leader>do <cmd>lua require'dapui'.toggle()<cr>
nnoremap <silent> <leader>dt <cmd>lua require'dapui'.toggle("tray")<cr>
nnoremap <silent> <leader>ds <cmd>lua require'dapui'.toggle("sidebar")<cr>

" Symbols Outline
nnoremap <silent> <leader>os <cmd>SymbolsOutline<cr>

"" lightline-bufferline
"nmap <silent> <leader>b1 <Plug>lightline#bufferline#go(1)
"nmap <silent> <leader>b2 <Plug>lightline#bufferline#go(2)
"nmap <silent> <leader>b3 <Plug>lightline#bufferline#go(3)
"nmap <silent> <leader>b4 <Plug>lightline#bufferline#go(4)
"nmap <silent> <leader>b5 <Plug>lightline#bufferline#go(5)
"nmap <silent> <leader>b6 <Plug>lightline#bufferline#go(6)
"nmap <silent> <leader>b7 <Plug>lightline#bufferline#go(7)
"nmap <silent> <leader>b8 <Plug>lightline#bufferline#go(8)
"nmap <silent> <leader>b9 <Plug>lightline#bufferline#go(9)
"nmap <silent> <leader>bs :call SelectBufferByNumber()<cr>

"nmap <silent> <leader>bd1 <Plug>lightline#bufferline#delete(1)
"nmap <silent> <leader>bd2 <Plug>lightline#bufferline#delete(2)
"nmap <silent> <leader>bd3 <Plug>lightline#bufferline#delete(3)
"nmap <silent> <leader>bd4 <Plug>lightline#bufferline#delete(4)
"nmap <silent> <leader>bd5 <Plug>lightline#bufferline#delete(5)
"nmap <silent> <leader>bd6 <Plug>lightline#bufferline#delete(6)
"nmap <silent> <leader>bd7 <Plug>lightline#bufferline#delete(7)
"nmap <silent> <leader>bd8 <Plug>lightline#bufferline#delete(8)
"nmap <silent> <leader>bd9 <Plug>lightline#bufferline#delete(9)
"nmap <silent> <leader>bds :call DeleteBufferByNumber()<cr>

"function! SelectBufferByNumber()
  "let bufnum = input("Buffer Number: ")
  "if bufnum =~# '^\d\+$'
    "call lightline#bufferline#go(str2nr(bufnum, 10))
  "endif
  "echo
"endfunction

"function! DeleteBufferByNumber()
  "let bufnum = input("Buffer Number: ")
  "if bufnum =~# '^\d\+$'
    "call lightline#bufferline#delete(str2nr(bufnum, 10))
  "endif
  "echo
"endfunction
