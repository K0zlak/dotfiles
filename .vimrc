
"Leader
let mapleader = " "
:source ~/.koz_config/ycm_config.vim
:source ~/.koz_config/options.vim
:source ~/.koz_config/plugins.vim
:source ~/.koz_config/natrew_config.vim
:source ~/.koz_config/bindings.vim
":source ~/.koz_config/auto_start.vim






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
"Set highlighting color errors
augroup my_colors
	autocmd!
	autocmd ColorScheme base16-monokai hi SpellBad cterm=reverse
augroup END
colorscheme base16-monokai

"enable syntax and plugins (for netrw)
filetype plugin on

"Set on the left a diff tab
:diffthis

"Disable arrow keys  , hjkl keys , backspace , page up and page down keys
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode())
"At save remove all trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
