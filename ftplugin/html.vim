 " Make indents all 2 spaces for html files
 autocmd Filetype html setlocal ts=2 sw=2 expandtab
 
 " Show line numbers
 set nu

" Useful html tag mappings
inoremap ;h <h1></h1><Esc>F<i
inoremap ;p <p></p><Esc>F<i
inoremap ;i <i></i><Esc>F<i
inoremap ;b <b></b><Esc>F<i
inoremap ;a <a href="#"></a><Esc>F<i
inoremap ;s <table><CR><tr><CR></tr><CR></table><Esc>kO<td></td><Esc>F<i
