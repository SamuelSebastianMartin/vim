"Include a vertical line at 79 characters wide
setlocal colorcolumn=79
highlight ColorColumn ctermbg=DarkGrey

"Use Flake 8 on all python files.
autocmd BufWritePost *.py call Flake8()

"Test class shortcut
inoremap ;c class Test*(TestCase):<CR><CR>def test_*(self):<CR>self.assertEqual()<Esc>3k0f*

" Set shebang
inoremap ;! #! /usr/bin/env python3<CR><CR><Esc>
inoremap ;! #! /usr/bin/env python3<CR><CR><Esc>
nnoremap ;1 i#! /usr/bin/env python3<CR><CR><Esc>
nnoremap ;1 i#! /usr/bin/env python3<CR><CR><Esc>
