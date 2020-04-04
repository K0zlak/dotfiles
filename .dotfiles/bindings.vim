"Line movement
nnoremap H	zH
nnoremap L	zL
"CHANGE Y KEY TO BE MORE CONSISTENT WITH D AND C KEYS.
nnoremap Y y$
"PANES
"MAX THE CURRENT PANE
nnoremap <C-W>m <C-W>_<C-W>\|
"MAP TO SHOW TREE FILE
nnoremap <Leader>o :NERDTreeToggle<CR>
"GO TO NORMAL MODE
noremap! jk <ESC>
vnoremap jk <ESC>
cnoremap jk <ESC>
"GO TO NEXT BUFFOR
nnoremap  <Leader>bn :bnext<CR>
nnoremap  <Leader>bp :bprevious<CR>
"SEARCHING
"Set on scrolloff option and it work well
"nnoremap n nzz
"nnoremap N Nzz
" TERMINAL
"nnoremap <Leader>T  :wincmd b \| bel terminal ++rows=10<CR>
nnoremap <Leader>T :terminal<CR>
tnoremap <Leader>qt <C-W>N
tnoremap <Leader>pp <C-W>""

"TAGBAR
nnoremap <F4>	:TagbarToggle<CR>
" ++ CLEAR THE SCREEN AND REDRAW
nnoremap  <Leader>l :nohlsearch<CR>

" QUICKER SPLITS MOVEMENT
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l
"RESIZING SPLITS WITH CTRL+ ARROWS
nnoremap <C-UP> <C-W>+
nnoremap <C-DOWN> <C-W>-
nnoremap <C-LEFT> <C-W><
nnoremap <C-RIGHT> <C-W>>
"QUITING SPLITS
nnoremap <Leader>q <C-W>q

"SEARCHING WITH DEFAULT VERY MAGIC
nnoremap / /\v
nnoremap ? ?\v
"SEARCHING IN VISUAL MODE ON SELECTED TEXT WITH DEFAULT VERY MAGIC
xnoremap / <ESC>/\%V\v
xnoremap ? <ESC>/\%V\v

"CTRLP
nnoremap <Leader>f :CtrlPMRUFiles<CR>
nnoremap <Leader>cb :CtrlPBuffer<CR>

"MACROS
"INSTEAD OF STUMBLING INTO EX MODE, REPEAT THE LAST COMMAND USED.
nnoremap Q :@:<CR>

"RUN THE CURRENT LINE AS IF IT WERE A COMMAND.OFTEN MORE CONVENIENT THAN Q:
"WHEN EXPERIMENTING.
nnoremap <Leader><Leader>e :exe getline(line('.'))<cr>

"GOYO
nnoremap <F6> :Goyo<CR>
"Dot repeat previous behaviour and leave the cursor at the point where it was before editing started
"nnoremap g. <Plug>(RepeatDot)`[
"Alt + Dot ( <A-?> or <M-?> don't work)
"nnoremap	.	  `[<Down>.
"ADD DOT "." REPEAT ACTION FOR VISUAL MODE
vnoremap . :norm.<CR>
"TOGGLE SPELLING
nnoremap <F1> :set spell!<CR>

"YOUCOMPLETEME
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

"" AUTOCOMPLETE BRACKETS
"inoremap <C-"> ""<left>
"inoremap <C-'> ''<left>
"inoremap <C-[> []<left>
"inoremap <C-(> ()<left>
"inoremap <C-{> {}<left>
"inoremap <C-{><CR> {<CR>}<ESC>O
"inoremap <C-{>;<CR> {<CR>};<ESC>O
""AUTOMATE ADD SEMICOLON ON THE END OF THE LINE
nnoremap <Leader>; A;<ESC>
"nnoremap <Leader>ff :!$(/mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe -new-tab )
nnoremap <Leader>b	:!$(/mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe ) %:p

"nnoremap jj <nop>
"nnoremap kk <nop>
"nnoremap ll <nop>
"nnoremap hh <nop>
