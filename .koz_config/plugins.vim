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
" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
