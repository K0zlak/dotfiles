"Change Y key to be more consistent with D and C keys.
nnoremap Y y$
"PANES
"max the current pane
nnoremap <C-W>m <C-W>_<C-W>\|
"map to show tree file
nnoremap <Leader>o :NERDTreeToggle<CR>

"Go to next buffor
nnoremap  <Leader>bn :bnext<CR>
nnoremap  <Leader>bp :bprevious<CR>

" TERMINAL
nnoremap <Leader>T  :wincmd b \| bel terminal ++rows=10<CR>
tnoremap qt <C-W>N

"TAGBAR
nnoremap <Leader>tg :TagbarToggle<CR>
" ++ Clear the screen and redraw
nnoremap  <Leader>l :nohlsearch<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"CtrlP
nnoremap <Leader>f :CtrlPMRUFiles<CR>
nnoremap <Leader>cb :CtrlPBuffer<CR>

"MACROS
"Instead of stumbling into ex mode, repeat the last macro used.
nnoremap Q @@
"Run the current line as if it were a command.Often more convenient than q:
"when experimenting.
nnoremap <Leader>e :exe getline(line('.'))<cr>

"GOYO
nnoremap <F6> :Goyo <CR>
