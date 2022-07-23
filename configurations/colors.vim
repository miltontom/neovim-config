syntax on
syntax enable
set t_Co=256
set termguicolors
set background=dark
colorscheme onedark
" :help highlight-groups
"highlight NonText guifg=#686783
highlight Normal ctermbg=NONE guibg=NONE
highlight VertSplit guifg=#abb2bf guibg=none
hi Floaterm guibg=none
hi FloatermBorder guibg=none guifg=#ABB2BF
highlight LineNr ctermbg=NONE guibg=#282c34
highlight CursorLineNr ctermbg=NONE guibg=#282c34
highlight Cursor gui=reverse cterm=reverse
highlight Cursor ctermfg=235 ctermbg=39 gui=reverse guifg=none guibg=none
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
