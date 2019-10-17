autocmd BufRead,BufNew *.md setf markdown

set spell

"Double underline (Heading 1)
inoremap ;= <Esc>yyp<S-V>r=o
nnoremap ;= yyp<S-V>r=o

"single underline (Heading 2)
inoremap ;- <Esc>yyp<S-V>r-o
nnoremap ;- yyp<S-V>r-o
