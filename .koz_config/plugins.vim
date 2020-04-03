set nocompatible              " be iMproved, required filetype off required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim

 call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rainbow_parentheses.vim'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'ap/vim-css-color'
"Plugin 'brianstorti/vim-hardtime'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'srooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'blueyed/vim-diminactive'
Plugin 'vim-airline/vim-airline'
Plugin 'sjl/gundo.vim'
Plugin  'junegunn/goyo.vim'
Plugin 'junegunn/vim-peekaboo'
"Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
"Plugin 'ervandew/supertab'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-unimpaired'
Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " make YCM compatible with UltiSnips (using supertab)
 "let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
 "let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
 "let g:ycm_key_list_accept_completion = ['<C-y>']
 ""let g:SuperTabDefaultCompletionType = '<C-j>'

 "" better key bindings for UltiSnipsExpandTrigger
 "let g:UltiSnipsExpandTrigger = '<Tab>'
 "let g:UltiSnipsJumpForwardTrigger = '<Tab>'
 "let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

 " Write all buffers before navigating from Vim to tmux pane
 let g:tmux_navigator_save_on_switch = 2
 " Disable tmux navigator when zooming the Vim pane
 let g:tmux_navigator_disable_when_zoomed = 1

 "Diminactive plugin
 let g:diminactive_use_syntax = 1
