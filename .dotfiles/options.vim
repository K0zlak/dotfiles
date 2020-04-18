set encoding=UTF-8
"By pressing <S-K> the command beneath keywordprg is launched with word under a cursor
"as the parameter. The keyword is defined by the iskeyword parameter.

set keywordprg=:help

"Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

"Set spelling
set spell
set spelllang=pl,en

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"With both on.searches with no capitals are case insensitive, while searches with
"a capital characters are case sensitive.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch 		" Highlight all matches
set hidden		" Hide buffers when they are abandoned
set autowrite		" Automatically save before commands like :next and :make
set history=1000	" Set how many entries may be stored in each of the histories
set scrolloff=10	" set how many lines to keep above and below the cursor.
"Persistent undo,even if you close and reopen Vim.Super great when combined with
"the undotree plugin.
if has ('persistent_undo')
    let target_path = expand('~/.config/vim-persisted-undo/')

    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif

    let &undodir = target_path
    set undofile
endif
"Makes fold visible in the sidebar.The higher n is, the more folds are
"represented visually and the fewer are represented by a number.
set foldcolumn=5

" Set visualBell instead annoying sound bell in case of error
set visualbell
" set line numbers
:set number
" set relative numbers
:set relativenumber


"SPLITS
"Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright


" set a vertical and horizontal line where cursor is.
:set cursorcolumn
:set cursorline

" Zmiana zachowania dopełniania <TAB> np w lini komend :e < ścieżka do
" pliku> doczytać póżniej i poeksperymentować
set wildmode=list:longest,full
" Włączenie menu propozycji
" Po wcisnieciu <TAB> np e W komendzie :e C:\ nad linią komend "
" pojawia się menu z propozycjami z danego katalogu
set wildmenu

set backspace=2   " Backspace deletes like most programs in insert mode
set autoindent		"use the indent of the previous line "

" Display extra white space
set list listchars=tab:»·,trail:·,nbsp:·,space:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

set ruler

" By CTRL+A and CTRL+X we can add and subtract to
" numbers and to alphanumeric characters
" nformat contain on what format it will work
"set nrformats+=alpha
"Donot redraw screen in the middle of a macro.Makes them complete faster
set lazyredraw
"Folding
set foldlevelstart=1
set foldmethod=indent

"TABS TO 4 SPACES
set tabstop=4
set shiftwidth=4
set expandtab

