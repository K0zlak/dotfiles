source ~/.vim_plugins
source ~/.vim_options

"Leader
let mapleader = " "


" Enable coloring syntax
if has("syntax")
	syntax enable
endif
"Use true colors in vim under tmux
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set t_ut=
	set termguicolors
endif
colorscheme base16-monokai




"Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_winsize =25
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"map to show tree file
nnoremap <Leader>o :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFocus<CR>

" Execute the shell command in the line under the cursor

nnoremap   <Leader>def qdq0"dy$:!<C-R>d<CR>

"Go to next buffor
nnoremap	<Leader>bn :bnext<CR>
nnoremap	<Leader>bp :bprevious<CR>

"enable syntax and plugins (for netrw)
filetype plugin on
" TABS
nnoremap <Leader>t  :terminal ++curwin <CR>

"++ GRADLE
nnoremap <F5> :Gradle run <CR> :sleep 1 <CR><c-w>wgg/error<CR>2F:b

" ++ Clear the screen and redraw
nnoremap  <Leader>l :nohlsearch<CR>



" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Set on the left a diff tab
:diffthis



"Disable arrow keys  , hjkl keys , backspace , page up and page down keys
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode())

autocmd BufWritePre * %s/\s\+$//e
