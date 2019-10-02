"By pressing <S-K> the command beneath keywordprg is launched with word under a cursor 
"as the parameter. The keyword is defined by the iskeyword parameter.

set keywordprg=:help

" Enable coloring syntax
if has("syntax")
	syntax on
endif

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"

set background=dark
" Set visualBell instead enoying soundbell in case of error
set visualbell
