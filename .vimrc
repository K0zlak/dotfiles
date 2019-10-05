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

set termguicolors
colorscheme malokai

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"

"set background=dark
" Set visualBell instead enoying soundbell in case of error
set visualbell
" set line numbers 
:set number
" set relative numbers 
:set relativenumber


" map to show tree file 
" <A-o>
nnoremap <Leader>o :Ntree<CR>

"enable syntax and plugins (for netrw)
filetype plugin on
" map a tabs shortcuts <A-?> Dont work for some reasone
" TABS
" <A-t>
nmap <Leader>t  :tabnew<CR>


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
"" set a vertical and horisontal line where cursor is.
:set cursorcolumn
:set cursorline

" Zmiana zachowania dopełniania <TAB> np w lini komend :e < ścieżka do
" pliku> doczytać póżniej i poeksperymentować
set wildmode=longest,list,full
" Włączenie menu propozycji 
" Po wcisnieciu <TAB> np e W komendzie :e C:\ nad linią komend " pojawia się menu z propozycjami z danego katalogu set wildmenu
set backspace=2   " Backspace deletes like most programs in insert mode
set showcmd       " display incomplete commands
set incsearch     " do incremental searching

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

