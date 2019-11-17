"Include a vertical line at 79 characters wide
setlocal colorcolumn=79
highlight ColorColumn ctermbg=DarkGrey

"set line numbers
set nu

"Use Flake 8 on all python files.
autocmd BufWritePost *.py call Flake8()

"Test class auto-text shortcut with ;c
inoremap ;c class Test*(TestCase):<CR><CR>def test_*(self):<CR>self.assertEqual()<Esc>3k0f*

" Set shebang auto-text with ;!
inoremap ;! #! /usr/bin/env python3<CR><CR><Esc>
inoremap ;! #! /usr/bin/env python3<CR><CR><Esc>
nnoremap ;1 i#! /usr/bin/env python3<CR><CR><Esc>
nnoremap ;1 i#! /usr/bin/env python3<CR><CR><Esc>

" if name == 'main'...
inoremap ;m if __name__ == '__main__':<CR>main()<Esc>
nnoremap ;m iif __name__ == '__main__':<CR>main()<Esc>

" Doc String
inoremap ;d <Esc>o"""<CR>"""<Esc>O
nnoremap ;d <Esc>o"""<CR>"""<Esc>O
