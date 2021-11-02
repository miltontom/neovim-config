
" Auto-commands
" -------------

" Auto-cursor highlighting (Inactive) {{{

"augroup BgHighlight
    "autocmd!
    "autocmd WinEnter * set cul
    "autocmd WinLeave * set nocul
"augroup END

" }}}

" Number Toggling (Active) {{{

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" }}}

" Auto-sourcing *.vim (Active) {{{

autocmd BufWritePost *.vim source %
"autocmd! bufwritepost $MYVIMRC source %
"autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" }}}

" Automatically exit insert mode after a few seconds {{{

au CursorHoldI * stopinsert

au InsertEnter * let updaterestore=&updatetime | set updatetime=5000
au InsertLeave * let &updatetime=updaterestore

" }}}

" Highlight Yanking (only available for v0.5){{{

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 300})
augroup END

" {timeout = 40}

" }}}

" Trim whitespace {{{

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup trim_whitespace
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

" }}}

" Filetype autocommands
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2

"au VimEnter * NERDTree

" go to the position I was when last editing the file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
