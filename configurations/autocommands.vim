
" Auto-commands
" -------------

" Auto-cursor highlighting (Inactive) {{{

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

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
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab


" go to the position I was when last editing the file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" :h keycodes
autocmd filetype c nnoremap // I//<Esc>
autocmd filetype c vnoremap // s/*<CR><Bs>*/<Esc><Left>P

autocmd FileType * set formatoptions-=cro

autocmd InsertLeave * set nopaste

autocmd filetype c nnoremap <F9> :w <bar> !gcc % -o %:r<CR>
autocmd filetype c nnoremap <F10> :!%:r<CR>
autocmd filetype c nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
