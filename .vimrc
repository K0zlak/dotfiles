source ~/.vim_plugins
source ~/.vim_options
source ~/.natrew_config
source ~/.vim_key_mappings

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

"enable syntax and plugins (for netrw)
filetype plugin on

"Set on the left a diff tab
:diffthis

"Disable arrow keys  , hjkl keys , backspace , page up and page down keys
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode())
"At save remove all trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
