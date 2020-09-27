call plug#begin('~/.config/nvim/autoload/plugged')


" " Use release branch (recommend)
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " Plug 'valloric/youcompleteme'
 " Plug 'chriskempson/base16-vim'
 " Plug 'rainbow_parentheses.vim'
 " Plug 'ap/vim-css-color'
 " Plug 'tmhedberg/matchit'

" TIM POPE
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'

" JUNE GUNN
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
" Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'

" MISC
Plug 'ThePrimeagen/vim-be-good'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
" Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'blueyed/vim-diminactive'
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

" TMUX
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wellle/tmux-complete.vim'

"TEXT OBJECTS
Plug 'wellle/targets.vim'
"Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'mattn/vim-textobj-url'
Plug 'glts/vim-textobj-comment'
Plug 'paulhybryant/vim-textobj-path'
Plug 'gilligan/textobj-gitgutter'
Plug 'somini/vim-textobj-fold'
Plug 'kana/vim-textobj-indent'
Plug 'idbrii/textobj-word-column.vim'
Plug 'tommcdo/vim-exchange'

call plug#end()

" SOURCE THE ORIGINAL VIMRC
source ~/.vim/vimrc

vnoremap vv V;
vnoremap V vg_;

nnoremap vv V;
nnoremap V vg_;

nnoremap <leader>gs <CMD>Gstatus<CR>
" " TEXTOBJ MAPPINGS
" " PATH TEXOBJECT MAPPING
" " UNMAP COLLIDING WITH PARAGRAPH OBJECT
omap   aP <Plug>(textobj-path-next_path-a)
xmap   aP <Plug>(textobj-path-next_path-a)
omap   iP <Plug>(textobj-path-next_path-i)
xmap   iP <Plug>(textobj-path-next_path-i)

" " WORDCOLUMN MAPPING
omap iK <Plug>(textobj-wordcolumn-WORD-i)
xmap iK <Plug>(textobj-wordcolumn-WORD-i)
omap aK <Plug>(textobj-wordcolumn-WORD-a)
xmap aK <Plug>(textobj-wordcolumn-WORD-a)
omap ik <Plug>(textobj-wordcolumn-word-i)
xmap ik <Plug>(textobj-wordcolumn-word-i)
omap ak <Plug>(textobj-wordcolumn-word-a)
xmap ak <Plug>(textobj-wordcolumn-word-a)

omap ico <Plug>(textobj-comment-i)
xmap ico <Plug>(textobj-comment-i)
omap aco <Plug>(textobj-comment-a)
xmap aco <Plug>(textobj-comment-a)

""COMMENTS MAPPING
"omap a?   <Plug>(textobj-comment-big-a)
"xmap a?   <Plug>(textobj-comment-big-a)
"omap i/   <Plug>(textobj-comment-i)
"xmap i/   <Plug>(textobj-comment-i)
"omap a/   <Plug>(textobj-comment-a)
"xmap a/   <Plug>(textobj-comment-a)

" UNNMAP IP AND AP MAPPINGS BECAUSE TEXTOBJ PATH OBJECT CONFLICTS WITH
" DEFUALT MAPPINGS WITH PARAGRAPH TEXTOBJ

function! UnmapPluginMappings()
    for m in ['ip', 'ap'  , 'ac', 'ic']
        if mapcheck(m,"o") != ""
            execute('silent! unmap  '.m)
        endif
        if mapcheck(m,"x") != ""
            execute('silent! unmap  '.m)
        endif
    endfor

endfunction

" Turn on Terminal and set up global 'T' mark, global verb, and terminal mappings only for this terminal buffer
function! TerminalToggle()

    if !exists( 'g:terminalIsOn' )
        let g:terminalIsOn = 1
        call execute( 'terminal')
        normal! mT
        tnoremap <buffer> <Esc><Esc> <C-\><C-n>
        "with yanking (text) text obj go to start of parentheses and then gF into
        "that file
        nmap <buffer> gf yibgF
    else
        normal! 'T
    endif


endfunction

function! TerminalDistroy()

    if exists( 'g:terminalIsOn' )
        unlet g:terminalIsOn
    endif

endfunction

nnoremap <silent><Leader>t <CMD>call TerminalToggle()<CR>
nnoremap <silent><Leader>T <CMD>call TerminalDistroy()<CR>

autocmd BufEnter * call UnmapPluginMappings()


" COC CONFIGURATION {{{
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"""
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType java,vim setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>aC  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>cq  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap icl <Plug>(coc-classobj-i)
omap icl <Plug>(coc-classobj-i)
xmap acl <Plug>(coc-classobj-a)
omap acl <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

 " Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>cd  <CMD>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>ce  <CMD>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>cc  <CMD>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>co  <CMD>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>cs  <CMD>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>cj  <CMD>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>ck  <CMD>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>cp  <CMD>CocListResume<CR>
" Preper CocList selection

nnoremap <space>C  :<C-u>Coc
" }}}


" Vista {{{
    nnoremap <leader>V :Vista!!<CR>
  let g:vista_default_executive = 'ctags'
  let g:vista_executive_for = {
      \ 'java': 'coc',
      \ 'vim': 'coc',
      \ }

 let g:vista_update_on_text_changed = 1
 let g:vista_sidebar_width = 50
 " let g:vista_echo_cursor_strategy = "floating_win"
" }}}

inoremap <C-UP> <ESC>kr<bar>a
inoremap <C-DOWN> <ESC>jr<bar>a
inoremap <C-LEFT> <ESC>hr─a
inoremap <C-RIGHT> <ESC>lr─a

inoremap <S-LEFT> <ESC>hr<a
inoremap <S-RIGHT> <ESC>lr>a
inoremap <S-LEFT> <ESC>hr<a
inoremap <S-DOWN> <ESC>jrva
inoremap <S-UP> <ESC>kr^a

inoremap <M-UP><M-RIGHT> <ESC>klr/a
inoremap <M-UP><M-LEFT> <ESC>khr\a
inoremap <M-DOWN><M-RIGHT> <ESC>jlr\a
inoremap <M-DOWN><M-LEFT> <ESC>jhr/a
inoremap <M-UP><M-UP> <ESC>klroa
inoremap <M-DOWN><M-DOWN> <ESC>jlroa
inoremap <M-UP> <ESC>kroa
inoremap <M-DOWN> <ESC>jroa
inoremap <M-LEFT> <ESC>hroa
inoremap <M-RIGHT> <ESC>lroa

" makes Ascii art font

nmap <leader>Tt :.!toilet -w 200 -f smmono12<CR>
vmap <leader>Tt :!toilet -w 200 -f smmono12<CR>

nmap <leader>Ts :.!toilet -w 200 -f small<CR>
vmap <leader>Ts :!toilet -w 200 -f small<CR>

" makes Ascii border

nmap <leader>Tb :.!toilet -w 200 -f term -F border<CR>
vmap <leader>Tb :!toilet -w 200 -f term -F border<CR>
