
let g:airline_theme='onedark'
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'

"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif

"let g:airline_symbols.maxlinenr = ' '
"let g:airline_symbols.linenr = ' :'

let g:airline_stl_path_style = 'short'
" % - %3p%%
"%{strftime("%d %b %Y")}
"let g:airline_section_z = '%{strftime("%d %b %Y")}  %l,%c'
let g:airline_section_z = '%3P%   %l:%c'
