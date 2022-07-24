syntax on
syntax enable
set t_Co=256
set termguicolors
set background=dark
"colorscheme onedark
colorscheme onedark
" :help highlight-groups
"highlight NonText guifg=#686783
highlight Normal ctermbg=NONE guibg=NONE
highlight VertSplit guifg=#abb2bf guibg=none
hi Floaterm guibg=none
hi FloatermBorder guibg=none guifg=#ABB2BF
highlight LineNr ctermbg=NONE guibg=#282c34
highlight CursorLineNr guibg=#282c34
"highlight Cursor guibg=#61afef guifg=#282c34
highlight Cursor guibg=#ffffff guifg=#282c34
highlight SignColumn ctermbg=NONE guibg=#282c34


" Spell checking {{{
hi SpellBad cterm=underline
hi SpellLocal cterm=underline
hi SpellRare cterm=underline
hi SpellCap cterm=underline
" }}}

nmap <C-k> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction
