"au BufNewFile,BufRead *.c call MyAbbrev

function MyAbbrev()
    iabbrev #i <C-]>#include <><left>
    iabbrev #d <C-]>#define<Space>
    iabbrev vm <C-]>#include <stdio.h><CR><CR>int main(void) {<CR><CR>}<Up><Tab>
    iabbrev ma <C-]>#include <stdio.h><CR><CR>int main(int argc, char *argv[]) {<CR><CR>}<Up><Tab>
    iabbrev for <C-]>for (int i = 0; i < ph; i++) {<CR><CR>}<Esc>?ph<CR>xxi
    iabbrev if <C-]>if (cond) {<CR><CR>}<Esc>?cond<CR>ci(
    iabbrev ifelse <C-]>if (cond) {<CR><CR>} else {<CR><CR>}<Esc>?cond<CR>ci(
    iabbrev while <C-]>while (cond) {<CR><CR>}<Esc>?cond<CR>ci(
    iabbrev dowhile <C-]>do {<CR><CR>} while (cond);<Esc>?cond<CR>ci(
endfunction

autocmd FileType c call MyAbbrev()

