
"Leader
let mapleader = " "
let maplocalleader = "\\"
:source ~/.koz_config/gundo_config.vim
:source ~/.koz_config/ycm_config.vim
:source ~/.koz_config/plugins.vim
:source ~/.koz_config/options.vim
:source ~/.koz_config/natrew_config.vim
:source ~/.koz_config/delimitmate.vim
:source ~/.koz_config/bindings.vim
:source ~/.koz_config/color_syntax.vim
:source ~/.koz_config/autocommands.vim
":source ~/.koz_config/auto_start.vim
source ~/.koz_config/goyo_config.vim

"Set on the left a diff tab
":diffthis
let g:hardtime_default_on = 1
set statusline+=%{gutentags#statusline()}
"packadd! matchit
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap gaa <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gaa <Plug>(EasyAlign)
