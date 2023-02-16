set spell
set autoindent

" Wrap the lines, and don't break mid-word.
set wrap
set linebreak

"Shortcuts and Remaps

"Double underline (Heading 1)
inoremap ;= <Esc>yyp<S-V>r=o
nnoremap ;= yyp<S-V>r=o

"single underline (Heading 2)
inoremap ;- <Esc>yyp<S-V>r-o
nnoremap ;- yyp<S-V>r-o

"insert single table column
nnoremap ;| i|   |
