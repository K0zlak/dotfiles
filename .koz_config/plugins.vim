set nocompatible              " be iMproved, required filetype off required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim

 call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
"Plugin 'Raimondi/delimitMate'
Plugin 'rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'brianstorti/vim-hardtime'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'srooloose/nerdcommenter'
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
Plugin 'ryanoasis/vim-devicons'
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

