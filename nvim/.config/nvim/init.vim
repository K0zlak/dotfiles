"LEADER - - - - - - - - - {{{
let mapleader = " "
let maplocalleader = "\\"
"}}}

" PLUGINS {{{
if has("nvim")
    call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'voldikss/vim-translator' " TRANSLATOR  {{{
    let g:translator_target_lang='pl'
    let g:translator_default_engines= [ 'google','bing']
    let g:translator_history_enable='true'

	nmap <silent> <Leader>p <Plug>TranslateW
	vmap <silent> <Leader>p <Plug>TranslateWV

    "}}}
    " TREESITTER {{{
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    " }}}
    " LSP {{{

    Plug 'neovim/nvim-lspconfig'
    " }}}
    " NVIM COMPLETION {{{
    Plug 'nvim-lua/completion-nvim' " {{{
    " }}}


    Plug 'albertoCaroM/completion-tmux'
    Plug 'steelsojka/completion-buffers'

    " let g:completion_auto_change_source = 1
    " let g:completion_chain_complete_list = {
    "             \ 'default': {'comment': [],
    "             \ 'default':  [
    "             \ {'complete_items': [ 'lsp', 'snippet']},
    "             \  {'mode': '<c-p>'}, {'mode': '<c-n>'},
    "             \ {'complete_items': ['tmux' , 'buffers']},
    "             \ {'complete_items': ['path']}]}}



    " }}}
    " TIM POPE {{{
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive' " {{{

    nnoremap <leader>gs <Cmd>Gstatus<CR>

    "}}}
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-projectionist' "{{{
    noremap <leader>AA :A<CR>
    noremap <leader>AS :AS<CR>
    noremap <leader>AV :AV<CR>
    noremap <leader>AT :AT<CR>
    "}}}
    " }}}
    " JUNE GUNN  {{{
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    " Plug 'junegunn/vim-peekaboo'
    Plug 'junegunn/gv.vim'
    Plug 'junegunn/vim-easy-align'
    " }}}
    " MISC {{{
    Plug 'tommcdo/vim-exchange'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree' "{{{
    noremap <leader>N :NERDTreeFind %<CR>
    "}}}
    " Plug 'majutsushi/tagbar'
    Plug 'liuchengxu/vista.vim'
    " Plug 'ludovicchabant/vim-gutentags'
    " Plug 'blueyed/vim-diminactive'
    Plug 'vim-airline/vim-airline'
    Plug 'sjl/gundo.vim'
    Plug 'morhetz/gruvbox'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-scripts/visualrepeat'
    " Plug 'vim-scripts/ReplaceWithRegister'
    Plug 'osyo-manga/vim-brightest' "{{{

    " let g:brightest#highlight = {
    " \   "group" : "BrightestUnderline"
    " \}

    "}}}
    "}}}
    " SNIPPETS {{{
    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'
    " }}}
    " TMUX {{{
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'christoomey/vim-tmux-navigator'
    " Plug 'wellle/tmux-complete.vim'

    " }}}
    "TEXT OBJECTS {{{
    Plug 'wellle/targets.vim'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-function'
    Plug 'kana/vim-textobj-line'
    Plug 'kana/vim-textobj-entire'
    Plug 'mattn/vim-textobj-url'
    Plug 'glts/vim-textobj-comment' " {{{
    omap ico <Plug>(textobj-comment-i)
    xmap ico <Plug>(textobj-comment-i)
    omap aco <Plug>(textobj-comment-a)
    xmap aco <Plug>(textobj-comment-a)
    " }}}

    " " Plug 'paulhybryant/vim-textobj-path' " {{{
    " " " PATH TEXOBJECT MAPPING
    " omap   aP <Plug>(textobj-path-next_path-a)
    " xmap   aP <Plug>(textobj-path-next_path-a)
    " omap   iP <Plug>(textobj-path-next_path-i)
    " xmap   iP <Plug>(textobj-path-next_path-i)
    " " }}}

    Plug 'gilligan/textobj-gitgutter' "{{{
    omap ih <Plug>(GitGutterTextObjectInnerPending)
    omap ah <Plug>(GitGutterTextObjectOuterPending)
    xmap ih <Plug>(GitGutterTextObjectInnerVisual)
    xmap ah <Plug>(GitGutterTextObjectOuterVisual)
    "}}}

    Plug 'somini/vim-textobj-fold'
    " Plug 'kana/vim-textobj-indent'
    Plug 'idbrii/textobj-word-column.vim' " {{{
    " " WORDCOLUMN MAPPING
    omap iK <Plug>(textobj-wordcolumn-WORD-i)
    xmap iK <Plug>(textobj-wordcolumn-WORD-i)
    omap aK <Plug>(textobj-wordcolumn-WORD-a)
    xmap aK <Plug>(textobj-wordcolumn-WORD-a)
    omap ik <Plug>(textobj-wordcolumn-word-i)
    xmap ik <Plug>(textobj-wordcolumn-word-i)
    omap ak <Plug>(textobj-wordcolumn-word-a)
    xmap ak <Plug>(textobj-wordcolumn-word-a)

    " }}}
    Plug 'jasonlong/vim-textobj-css' " {{{
    omap ics  <Plug>(textobj-css-i)
    omap acs  <Plug>(textobj-css-i)
    xmap ics  <Plug>(textobj-css-a)
    xmap acs  <Plug>(textobj-css-a)
    "}}}
    Plug 'dbeniamine/cheat.sh-vim' "{{{
    let g:CheatSheetDoNotMap=1
    "}}}


endif


" UNNMAP IP AND AP MAPPINGS BECAUSE TEXTOBJ PATH OBJECT CONFLICTS WITH
" DEFUALT MAPPINGS WITH PARAGRAPH TEXTOBJ
" " UNMAP COLLIDING WITH PARAGRAPH OBJECT

function! UnmapPluginMappings()
    for m in ['ip', 'ap' ] ", 'ac', 'ic']
        if mapcheck(m,"o") != ""
            execute('silent! unmap  '.m)
        endif
        if mapcheck(m,"x") != ""
            execute('silent! unmap  '.m)
        endif
    endfor

endfunction

"UNMAP UNWANTED MAPPINGS FOR EVERY BUFFER
autocmd BufEnter * call UnmapPluginMappings()

" }}}

call plug#end()
" }}}

"VIMRC {{{


"SHELL config {{{

"Set this to enable vim use bash aliases
let $BASH_ENV="~/.bash_aliases"

"}}}

"OPTIONS - - - - - - - - - {{{
    "BASIC OPTIONS {{{
"enable syntax and plugins
filetype plugin on
set encoding=UTF-8
"By pressing <S-K> the command beneath keywordprg is launched with word under a cursor
"as the parameter. The keyword is defined by the iskeyword parameter.
set keywordprg=:help

"Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

set nocompatible              " be iMproved, required filetype off required

"Set spelling
set spelllang=pl,en

" set directory=~/.config/vim-swapfile//,/home/mikoz/tmp,/var/tmp,/tmp
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
"With both on.searches with no capitals are case insensitive, while searches with a capital characters are case sensitive.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set hlsearch        " Highlight all matches
set hidden          " Hide buffers when they are abandoned
set autowrite       " Automatically save before commands like :next and :make
set autoread        "Automatically read the file if the change outside of vim is detected
set history=1000    " Set how many entries may be stored in each of the histories
set scrolloff=5     " set how many lines to keep above and below the cursor.
set sidescrolloff=5 " set how many lines to keep right and left the cursor.
set inccommand=nosplit

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

" set a vertical and horizontal line where cursor is.
set cursorcolumn
set cursorline

" Zmiana zachowania dopełniania <TAB> np w linii komend :e < ścieżka do
" pliku> doczytać później i poeksperymentować
" set wildmode=list:longest,full
set wildmode=full
" Włączenie menu propozycji
" Po wciśnięciu <TAB> np e W komendzie :e C:\ nad linią komend "
" pojawia się menu z propozycjami z danego katalogu
set wildmenu
set wildignore+=*.swp

set backspace=2   " Backspace deletes like most programs in insert mode
set autoindent      "use the indent of the previous line "
set wrap            "Wrap long lines
set linebreak       "Wrapping lines don't happen on last characters on the screen
set breakindent     "After wrapping all hello.get(lowrapped continue visually indented
set browsedir=buffer
set nowrapscan


" Display extra white space
set list listchars=tab:»·,trail:·,nbsp:· ",space:·

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

"TABS TO 4 SPACES
set tabstop=4
set shiftwidth=4
set expandtab

" Set visualBell instead annoying sound bell in case of error
set visualbell
" set line numbers
set number
" set relative numbers
set relativenumber

" }}}
    "Folding {{{
"Makes fold visible in the sidebar.The higher n is, the more folds are
"represented visually and the fewer are represented by a number.
" set foldcolumn=5
set foldopen-=block



" Taken form Steve Losh https://bitbucket.org/sjl/dotfiles/src/default/vim/vimrc
function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '>' . repeat(" ",fillcharcount) . foldedlinecount . '<' . ' '
endfunction " }}}

" set foldtext=MyFoldText()

" }}}
    "SPLITS {{{
"Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

" }}}

" }}}

"BINDINGS - - - - - - - - - {{{

"Horizontal Line movement
" nnoremap H  zH
" nnoremap L  zL

nnoremap <space> <NOP>
nnoremap H  ^
vnoremap H  ^
onoremap H  ^
nnoremap L  g_
vnoremap L  g_
onoremap L  g_

nnoremap <leader>h <CMD>nohlsearch<CR>
nnoremap gb :ls<CR>:buffer<Space>
nnoremap gp `[v`]
nnoremap gy `[v`]

"CHANGE Y KEY TO BE MORE CONSISTENT WITH D AND C KEYS.
nnoremap Y y$
"PANES
"MAX THE CURRENT PANE
nnoremap <C-W>m <C-W>_<C-W><bar>
"MAP TO SHOW TREE FILE
nnoremap <Leader>n <CMD>NERDTreeToggle<CR>

noremap <Leader>ej :w ! node<CR>
xnoremap <Leader>ej :w ! node<CR>
noremap <Leader>ep :w ! python3.8<CR>
xnoremap <Leader>ep :w ! python3.8<CR>

" set window height to 5 by default
" nnoremap <Leader>W 5_
nnoremap <Leader>+ <CMD> resize +5<CR>
nnoremap <Leader>- <CMD> resize -5<CR>
" set window width to 5 by default
" nnoremap <Leader>H 5<bar>


""LOREM IPSUM GENERATOR BINDINGS WITH VIM-REPEAT
nnoremap <Plug>LoremWord :<C-U>call InsertTextIntoLine(LoremWords(v:count1))<BAR>
            \ silent! call repeat#set("\<Plug>LoremWord", v:count)<CR>
nnoremap <Plug>LoremSentense   :<C-U>call InsertTextIntoLine(LoremSentenses(v:count1))<BAR>
            \ silent! call repeat#set("\<Plug>LoremSentense", v:count)<CR>
nnoremap <Plug>LoremParagraph  :<C-U>call InsertTextIntoLine(LoremParagraphs(v:count1))<BAR>
            \ silent! call repeat#set("\<Plug>LoremParagraph", v:count)<CR>
nnoremap <Plug>LoremRandomWord :<C-U>call InsertTextIntoLine(LoremRandomWords(0,v:count1))<BAR>
            \ silent! call repeat#set("\<Plug>LoremRandomWord", v:count)<CR>

nmap <leader>lw <Plug>LoremWord
nmap <leader>ls <Plug>LoremSentense
nmap <leader>lp <Plug>LoremParagraph
nmap <leader>lr <Plug>LoremRandomWord

vnoremap <leader>lw c<C-R>=LoremWords(v:count1)<CR>gv
vnoremap <leader>ls c<C-R>=LoremSentenses(v:count1)<CR>gv
vnoremap <leader>lp c<C-R>=LoremParagraphs(v:count1)<CR>gv
vnoremap <leader>lr c<C-R>=LoremRandomWords(0,v:count1)<CR>gv




""Go TO NORMAL MODE
" inoremap jk <ESC>


"SPLIT :OPOSITE TO 'J' THE LAST HL IS TO NEXT <K>(UP) NOT TAKE CURSOR TO THE LAST
" POSITION OF THE NEXT LINE BUT TO SIGN ABOVE CURRENT ON
nnoremap S i <ESC>k$hl

"Yank into system ClipBoard
vnoremap <silent> gy :y <bar> '<,'>w ! clip<CR>

"Paste to WSL for Windows Clipboard
" vnoremap P :<C-U>call PasteToWSL_FromWindows()<CR>

" WRITING FILES
nnoremap <Leader>w <CMD>w<CR>
"SEARCHING
"Set on scrolloff option and it work well
nnoremap n nzzzv
nnoremap N Nzzzv

"Leave the cursor in the same position after the joining the line
nnoremap J mzJ`z

" Separate the undo action in one text insetion.
" inoremap , ,<c-g>u
" inoremap . .<c-g>u
" inoremap ! !<c-g>u
" inoremap ? ?<c-g>u
" inoremap <Space> <Space><c-g>u

"SEARCHING WITH DEFAULT VERY MAGIC
nnoremap / /\v
nnoremap ? ?\v

"DEFAULT SEARCHING
nnoremap <Leader>/ /
nnoremap <Leader>? ?

"SEARCHING IN VISUAL MODE ON SELECTED TEXT WITH DEFAULT VERY MAGIC
xnoremap <Leader>/ /\%V\v
xnoremap <Leader>? /\%V\v

" CHANGE THE DEFAULT BEHAVIOUR OF JUMPING TO THE NEXT MATCH TO CURSOR POSITION REMAIN IN THE SAME SPACE
nnoremap * *N
nnoremap g* g*N
nnoremap g# g#N
nnoremap # #N

" TERMINAL
"nnoremap <Leader>T  :wincmd b \| bel terminal ++rows=10<CR>
" nnoremap <Leader>T :execute()<CR>
" nnoremap <Leader>cd :lcd %:p:h<CR>
" tnoremap <Leader>qt <C-W>N

" GO TO TERMINAL AND EXECUTE LATEST COMMAND
nmap <space> <space>tik
"TAGBAR
" nnoremap <F4>   :TagbarToggle<CR>

"RESIZING SPLITS WITH CTRL+ ARROWS
nnoremap <C-UP> <C-W>+
nnoremap <C-DOWN> <C-W>-
nnoremap <C-LEFT> <C-W><
nnoremap <C-RIGHT> <C-W>>

nnoremap j  gj
nnoremap k  gk

" VISUAL MODE {{{
" IN VISUAL MODE MOVE HIGHLIGHTED TEX WITH K AND J
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

"CHANGE VV TO BEHAVE AS CUSTOM V
" V MAPPING VISUALLY SELECT FROM CURSOR TO END OF THE LINE

xnoremap vv V
xnoremap V g_

nnoremap vv V
nnoremap V vg_

" }}}

"MACROS
" nnoremap Q <CMD>@:<CR>

"WHEN EXPERIMENTING.

nnoremap <F6> <CMD>Goyo<CR>
"nnoremap g. <Plug>(RepeatDot)`[
"nnoremap   .   `[<Down>.
" vnoremap . <CMD>normal!.<CR>
"ADD DOT "." REPEAT ACTION FOR VISUAL MODE
"Alt + Dot ( <A-?> or <M-?> don't work)
"Dot repeat previous behaviour and leave the cursor at the point where it was before editing started
"GOYO
nnoremap <Leader><Leader>e <CMD>exe getline(line('.'))<cr>
"RUN THE CURRENT LINE AS IF IT WERE A COMMAND.OFTEN MORE CONVENIENT THAN Q:
nnoremap Q @@
"INSTEAD OF STUMBLING INTO EX MODE, REPEAT THE LAST COMMAND USED.

" REBIND <UP> AND <DOWN> FOR ^K AND ^J FOR EASIER COMMAND LINE HISTORY USE
cnoremap  <C-K> <UP>
cnoremap  <C-J> <DOWN>

" BUFFFER ACTION
nnoremap <leader>bd <CMD>bd<CR>
nnoremap <leader>bO <CMD>%bd<bar>e#<bar>bd# <CR>


nnoremap <esc> :noh<CR><esc>
 " FZF {{{


" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap s <nop>
nnoremap S <nop>
nnoremap <silent>sbt <CMD>BTags<CR>
nnoremap <silent>st  <CMD>Tags<CR>
nnoremap <silent>sbc <CMD>BCommits<CR>
nnoremap <silent>s/  <CMD>History/<CR>
nnoremap <silent>s?  <CMD>History/<CR>
nnoremap <silent>s:  <CMD>History:<CR>
nnoremap <silent>sh  <CMD>History<CR>
nnoremap <silent>sl  <CMD>Lines<CR>
nnoremap <silent>sH  <CMD>Helptags<CR>
nnoremap <silent>sg  <CMD>GFiles<CR>
nnoremap <silent>sm  <CMD>Marks<CR>
nnoremap <silent>sf  <CMD>FZF<CR>
nnoremap <silent>sF  <CMD>HFiles<CR>
nnoremap <silent>sB <CMD>Buffers<CR>
nnoremap <silent>sr  <CMD>execute 'Rg '.expand('<cword>')<CR>

command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)
" let $FZF_DEFAULT_OPTS .= ' --reverse --info=inline'

" }}}

" }}}


"PLUGINS CONFIGS & BINDINGS - - - - - - - - - - {{{
"MY_FUNCTIONS {{{


"PASTE FROM SYSTEM CLIPBOARD " {{{

function! InsertTextIntoLine(text) "{{{
    let textToInsert = a:text
    let line = getline('.')
    let pos = col('.')-1
    if pos > 0
        let line = line[:pos-1] . textToInsert . line[pos:]
    else
        let line = textToInsert . line[pos:]
    endif
    call setline('.', line)

endfunction "}}}

 function! PasteToWSL_FromWindows() "{{{
    let systemClipboard = system("powershell=\"$(powershell.exe -Command Get-Clipboard)\" ; echo -n \"${powershell//[$'\r\n\t']}\"")
    call InsertTextIntoLine(systemClipboard)
 endfunction "}}}

"}}}

"LOREM IPSUM {{{
function! LoremSentenses(count) " {{{
    let lorem = system("lorem -s " . a:count )
    return lorem
endfunction " }}}

function! LoremWords(count) " {{{
    let lorem = system("lorem -w " . a:count )
    return lorem
endfunction " }}}

function! LoremParagraphs(count) " {{{
    let lorem = system("lorem -p " . a:count )
    return lorem
endfunction " }}}

function! LoremRandomWords(firstCount,secondCount)  " {{{
    let seed = srand()
    let randomNumber = rand(seed) % (a:secondCount - a:firstCount) + a:firstCount " random number 1 - count
    let lorem = system("lorem -w " . randomNumber)
    return lorem
endfunction " }}}

"}}}
"}}}


    "GUNDO_CONFIG {{{
nnoremap <F5> <CMD>GundoToggle<CR>
let g:gundo_preview_bottom=1
let g:gundo_right=1
let g:gundo_prefer_python3=1
let g:gundo_return_on_revert=0

" }}}

"NATREW_CONFIG {{{

"Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_winsize =25
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

 let g:netrw_browsex_viewer   = "cmd.exe /C start"
" }}}

"DELIMITMATE {{{

let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" }}}

"GOYO_CONFIG {{{

let g:goyo_width=100
let g:goyo_height=150

    function! s:goyo_enter()
      silent !tmux set status off
      silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
      set noshowmode
      set noshowcmd
      set scrolloff=999
      set nocursorline
      set nocursorcolumn
    endfunction

    function! s:goyo_leave()
      silent !tmux set status on
      silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
      set showmode
      set showcmd
      set scrolloff=5
      set nocursorline
      set nocursorcolumn
    endfunction

    autocmd! User GoyoEnter nested call <SID>goyo_enter()
    autocmd! User GoyoLeave nested call <SID>goyo_leave()

" }}}

"MISC {{{

" EASY-ALIGN CONFIGURATION {{{

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap gA <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gA <Plug>(EasyAlign)

" Start live interactive EasyAlign in visual mode (e.g. vipga)
xmap gL <Plug>(LiveEasyAlign)

" Start live interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gL <Plug>(LiveEasyAlign)

" }}}

" Write all buffers before navigating from Vim to tmux pane
 let g:tmux_navigator_save_on_switch = 1
" Disable tmux navigator when zooming the Vim pane
 let g:tmux_navigator_disable_when_zoomed = 1

 "DIMINACTIVE PLUGIN {{{
 let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help']
 let g:diminactive_filetype_blacklist = ['startify']
 let g:diminactive_use_syntax = 0
 let g:diminactive_enable_focus = 1

" }}}

 " }}}

"}}}

"AUTOCOMMANDS - - - - - - - - - - {{{

"At save remove all trailing white spaces
function! StripTrailingWhitespace()
" Only strip if the b:noStripeWhitespace variable isn't set
    if exists('b:noStripWhitespace')
        return
    endif
        %s/\s\+$//e
    endfunction

autocmd BufWritePre * call StripTrailingWhitespace()
autocmd FileType markdown,tex let b:noStripWhitespace=1
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=250}


if !has('nvim')

    autocmd TerminalOpen * set nonumber
    autocmd TerminalOpen * set norelativenumber
    autocmd TerminalOpen * set foldcolumn=0
endif
" }}}

"FILETYPES {{{

" Java {{{
"SteveLosh's https://bitbucket.org/sjl/dotfiles/src/tip/vim/vimrc
augroup ft_java
    autocmd!

    autocmd FileType java setlocal suffixesadd+=.java
    " autocmd FileType java setlocal foldmethod=marker
    " autocmd FileType java setlocal foldmarker={,}
    autocmd FileType java setlocal foldmethod=expr
    autocmd FileType java setlocal foldexpr=nvim_treesitter#foldexpr()
    autocmd FileType java setlocal foldlevelstart=5
    autocmd FileType java setlocal iskeyword-=_
    " autocmd FileType java inoremap <c-n> <c-x><c-]>

augroup END
" }}}

" VIM {{{
augroup ft_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldmarker={{{,}}}
    autocmd FileType vim setlocal iskeyword-=_
    " autocmd FileType vim setlocal foldlevelstart=3
    " autocmd FileType vim inoremap <c-n> <c-x><c-]>
augroup END
" }}}


" GIT {{{
augroup ft_git
    autocmd!
    autocmd FileType git setlocal spell
augroup END
"}}}

" TEX {{{
augroup ft_tex

    autocmd!
    autocmd FileType tex syntax spell toplevel
    autocmd FileType tex setlocal spell
augroup END
"}}}

" BASH {{{
augroup ft_bash
    autocmd!
    autocmd FileType bash,sh setlocal spell
    autocmd FileType bash,sh setlocal foldmethod=marker
    autocmd FileType bash,sh setlocal foldmarker={,}
    autocmd FileType bash,sh setlocal foldlevelstart=1
augroup END
"}}}

" GITCOMMIT {{{
augroup ft_gitcommit
    autocmd!
    autocmd FileType gitcommit setlocal spell
augroup END
"}}}
" }}}

"COLOR_SYNTAX{{{


if has("syntax")
    syntax enable
endif

let g:gruvbox_invert_selection='0'

"Use true colors in vim under tmux
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set t_ut=
    set termguicolors
endif

colorscheme gruvbox
set background=dark



"Spelling coloring
highlight IncSearch guibg=firebrick2
" highlight SpellBad guifg=firebrick2
highlight SpellBad gui=undercurl
highlight SpellBad cterm=underline
highlight Visual guibg=#5f87d7

" }}}
"}}}


" GO TO TERMINAL {{{
" Turn on Terminal and set up global 'T' mark, global verb, and terminal mappings only for this terminal buffer
function! TerminalToggle()

    if !exists( 'g:terminalIsOn' )
        let g:terminalIsOn = 1
        call execute( 'terminal')
        normal! mT
        tnoremap <buffer> <Esc><Esc> <C-\><C-n>
        tnoremap <buffer> <C-^> <C-\><C-n><C-^>
        "with yanking (text) text obj go to start of parentheses and then gF into
        "that file
        nmap <buffer> gf yibgF
    else
        normal! 'TG
    endif


endfunction

function! TerminalDistroy()

    if exists( 'g:terminalIsOn' )
        unlet g:terminalIsOn
    endif

endfunction

nnoremap <silent><Leader>t <CMD>call TerminalToggle()<CR>
nnoremap <silent><Leader>T <CMD>call TerminalDistroy()<CR>
"}}}


" Vista {{{
    nnoremap <leader>vv :Vista!!<CR>
  let g:vista_default_executive = 'coc'
  let g:vista_executive_for = {
      \ 'java': 'coc',
      \ 'vim': 'coc',
      \ 'js': 'coc',
      \ }

 let g:vista_update_on_text_changed = 1
 let g:vista_sidebar_width = 50
 let g:vista_echo_cursor_strategy = "floating_win"
" }}}
