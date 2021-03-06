
" :help key-notation key-codes keycodes
" -------------------------------------

" Leader keys {{{

let mapleader=" " "\<Space>
let maplocalleader=","

" }}}

" Escape mode mapping {{{
inoremap jj <Esc>
inoremap jk <Esc>

cnoremap jj <Esc>

" }}}

" Command mode mapping (blank) {{{

" }}}

" Sourcing init.vim {{{

nnoremap <Leader>so :so $MYVIMRC<CR>

" }}}

" Editing init.vim {{{

nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>tv :tabnew $MYVIMRC<CR>

" }}}

" Auto pairs completion {{{

"inoremap '' ''<Left>
"inoremap "" ""<Left>
"inoremap () ()<Left>
"inoremap [] []<Left>
"inoremap {} {}<Left>

" }}}


" Character surround (NORMAL/VISUAL) {{{

"nnoremap ' ciw''<Esc>P
"nnoremap " ciw""<Esc>P
"nnoremap ( ciw()<Esc>P
"nnoremap [ ciw[]<Esc>P
"nnoremap { ciw{}<Esc>P

"vnoremap ' s''<Esc>P
"vnoremap " s""<Esc>P
"vnoremap ( s()<Esc>P
"vnoremap [ s[]<Esc>P
"vnoremap { s{}<Esc>P

" }}}

" Highlighting last inserted lines/characters {{{
nnoremap <Leader>v `[v`]

" }}}

" Make it VIM {{{

nnoremap Y y$

" }}}

" Keeping it centered {{{

nnoremap n nzzzv
nnoremap N Nzzzv
nmap G Gzz
nmap } }zz
nmap { {zz
"nmap n nzz
"nmap N Nzz

" }}}

" Undo break points {{{

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" }}}

" Moving lines of text {{{

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap <C-k> <Esc>:m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==

nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" }}}

" Paste the last thing yanked not deleted {{{

nnoremap ,P "0P
nnoremap ,p "0p

" }}}

" Move b/w Vimdows {{{

nmap <leader>k <C-w>k
nmap <leader>j <C-w>j
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l

" }}}

" Adjusting split size {{{

nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Up> :resize -3<CR>
nnoremap <silent> <C-Down> :resize +3<CR>

" Resize window
"nmap <C-w><Left> <C-w><
"nmap <C-w><Right> <C-w>>
"nmap <C-w><up> <C-w>+
"nmap <C-w><down> <C-w>-

" }}}

" Change splits from Vertical >>---> Horizontal {{{

nnoremap <leader>th <C-w>t<C-w>H
nnoremap <leader>tk <C-w>t<C-w>K

" }}}

" Move to first and last character in a line {{{

nnoremap <A-e> $
nnoremap <A-a> ^
"nnoremap mf 0

vnoremap <A-e> $
vnoremap <A-a> ^
"vnoremap mf 0

" }}}

" Write only if something is changed {{{

nnoremap <Leader>w :up<CR>

" }}}

" Switch b/w tabs {{{

nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" }}}

" Switch b/w Buffers {{{

"nnoremap bn :bn<Space>

nnoremap bn :bnext<CR>
nnoremap bp :bprev<CR>

nnoremap bf :bfirst<CR>
nnoremap bl :blast<CR>

nmap <silent><Tab> :bnext<CR>
nmap <silent><S-Tab> :bprev<CR>

" }}}

" toggle signcolumn {{{

map <leader>sy :set signcolumn=yes<CR>
map <leader>sn :set signcolumn=no<CR>

" }}}

" Code Folding {{{

" fold code
nnoremap <leader>z za
nnoremap <leader>c zM
nnoremap <leader>o zR


" }}}

" Clear highlighted search {{{

" <leader>clear search
map <leader>cc :nohlsearch<CR>:redraw!<CR>

" }}}

" Erase line/words (Command mode/Insert mode) {{{

cnoremap kk <C-u>

" }}}

" SpellCheck {{{

"map <F5> :setlocal spell!<CR>

" }}}

nnoremap <CR> :nohlsearch<CR>

" Move by visual lines {{{
noremap j gj
noremap k gk

" }}}

" force minimum windows width
"set winwidth=110

nnoremap <leader>vv <C-q>

" Compile & run C/C++ program [:help expand()]
"nmap <silent><F10> :!gcc %:t -o %:t:r && %:t:r.exe<CR>

"nnoremap <tab> %

" Stop auto commenting
"set formatoptions-=cro

" Multiline commenting
"vnoremap // s/*<CR>*/<Esc><Left>P
"nnoremap // I//<Esc>

" Cursor movement in insert mode
inoremap <C-j> <Left>
inoremap <C-k> <Right>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

" Replaces the word under the cursor for whatever you want, press . it will keep substituting
" all the instances of the original word.
nnoremap <Leader>x *``cgn
nnoremap <Leader>X #``cgN

" Increment/Decrement
nnoremap + <C-a>
nnoremap - <C-x>

xnoremap + g<C-a>
xnoremap - g<C-x>

" Select all
nmap <C-a> gg<S-v>G

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Terminal
tmap <C-\> <C-\><C-n>
nnoremap <leader>t :term<CR>

" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Delete a word backwards
nnoremap <localleader>dw vb"_d

