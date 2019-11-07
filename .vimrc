source ~/.vim_plugins

"Leader
let mapleader = " "


"By pressing <S-K> the command beneath keywordprg is launched with word under a cursor
"as the parameter. The keyword is defined by the iskeyword parameter.

set keywordprg=:help

"Search down into subfolders
" Provides tab-completion for all file-related tasks
 set path+=**
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


set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch 		" Highlight all matches
"

" Set visualBell instead enoying soundbell in case of error
set visualbell
" set line numbers
:set number
" set relative numbers
:set relativenumber


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


"SPLITS
"Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Set on the left a diff tab
:diffthis
" set a vertical and horisontal line where cursor is.
:set cursorcolumn
:set cursorline

" Zmiana zachowania dopełniania <TAB> np w lini komend :e < ścieżka do
" pliku> doczytać póżniej i poeksperymentować
set wildmode=longest,list,full
" Włączenie menu propozycji
" Po wcisnieciu <TAB> np e W komendzie :e C:\ nad linią komend "
" pojawia się menu z propozycjami z danego katalogu
set wildmenu

set backspace=2   " Backspace deletes like most programs in insert mode

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

set ruler

" By CTRL+A and CTRL+X we can add and substract to
" numbers and to alfanumeric characters
" nformat contain on what format it will work
set nrformats+=alpha

"Folding
set foldlevelstart=1
set foldmethod=indent


"Disable arrow keys  , hjkl keys , backspace , page up and page down keys
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode())

autocmd BufWritePre * %s/\s\+$//e
