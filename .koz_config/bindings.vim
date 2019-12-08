"Edit vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
" source this file
nnoremap <Leader>sf :source %<CR>
"Line movement
nnoremap H g^
nnoremap L g_
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
tnoremap <Leader>qt <C-W>N
tnoremap <Leader>pp <C-W>""

"TAGBAR
nnoremap <Leader>tg :TagbarToggle<CR>
" ++ Clear the screen and redraw
nnoremap  <Leader>l :nohlsearch<CR>

" Quicker splits movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"Resizing splits with Ctrl+ arrows
nnoremap <C-UP> <C-W>+
nnoremap <C-DOWN> <C-W>-
nnoremap <C-LEFT> <C-W><
nnoremap <C-RIGHT> <C-W>>
"Quiting splits
nnoremap <Leader>q <C-W>q

"Searching with default very magic
nnoremap / /\v
nnoremap ? ?\v


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
nnoremap <F6> :Goyo<CR>

"Add dot "." repeat action for visual mode
vnoremap . :norm. &lt;CR&lt;<CR>
"Toggle spelling
nnoremap <F1> :set spell!<CR>

"YouCompleteMe
nnoremap <Leader>jgde :YcmCompleter GoToDeclaration <CR>
nnoremap <Leader>jgt :YcmCompleter GoToType <CR>
nnoremap <Leader>jgi :YcmCompleter GoToImplementation <CR>
nnoremap <Leader>jgr :YcmCompleter GoToReference <CR>
nnoremap <Leader>jgdo :YcmCompleter GoToDoc <CR>
nnoremap <Leader>jtt :YcmCompleter GetType <CR>
nnoremap <Leader>jfi :YcmCompleter FixIt <CR>
nnoremap <Leader>jff :YcmCompleter Format  <CR>
nnoremap <Leader>jrr :YcmCompleter RefactorRename
nnoremap <Leader>joi :YcmCompleter OrganizeImports <CR>

" Autocomplete brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap [ []<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Automate add semicolon on the end of the line
nnoremap <Leader>; A;<ESC>
