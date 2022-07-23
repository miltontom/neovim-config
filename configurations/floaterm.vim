"'─│─│┌┐┘└'
"let g:floaterm_keymap_new='<leader>ft'
"let g:floaterm_keymap_toggle='<leader>t'

let g:floaterm_shell='pwsh.exe'
let g:floaterm_width=0.75
let g:floaterm_height=0.9
let g:floaterm_autoclose=1
"let g:floaterm_title=' floaterm: $1 of $2 '
let g:floaterm_title=0
let g:floaterm_borderchars='─│─│╭╮╯╰'
" Spawning terminal
nnoremap <silent> <A-t> :FloatermNew<CR>
nnoremap <silent> <F9> :FloatermToggle<CR>

" Show or hide window
noremap <silent> <F5> :FloatermShow<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermHide<CR>

" Cycle through windows
tnoremap <silent> <F7> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermNext<CR>

" Kill an instance of floaterm
tnoremap <silent> <F4> <C-\><C-n>:FloatermKill<CR>

"nnoremap <silent><F10> :!gcc %:t -o %:t:r && %:t:r.exe<CR>
nnoremap <silent><F10> :!gcc %:t -o %:t:r<CR>
