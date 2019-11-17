"number of spaces in a TAB
set tabstop=4

"number of spaces a tab counts for when editing. So this value is the number
"of spaces that is inserted when you hit <TAB> and also the number of spaces
"that are removed when you backspace
set softtabstop=4

"<TAB> just becomes a shortcut for "insert four spaces
set expandtab

set shiftwidth=4

set smartindent

" remapping for classes
inoremap ;$ $this->
inoremap ;4 $this->
inoremap ;c //require_once('')<CR>use \PHPUnit\Framework\TestCase;<CR><Esc>Iclass *Test extends TestCase{<Esc>l2xo}<Esc>Opublic function test*(){<Esc>o}<Esc>2k0f*
"<CR> public function test*(){<CR>}<CR>}<Esc>3kW

" Curly braces layout
inoremap ;[ {<CR>}<Esc>O
inoremap ;{ {<CR>}<Esc>O

"Opening php tag
inoremap ;! <?php<CR><CR>
inoremap ;1 <?php<CR><CR>
nnoremap ;! gg0i<?php<CR><CR>
nnoremap ;1 gg0i<?php<CR><CR>

" Useful html tag mappings
inoremap ;h <h1></h1><Esc>F<i
inoremap ;p <p></p><Esc>F<i
inoremap ;i <i></i><Esc>F<i
inoremap ;b <b></b><Esc>F<i

" Run highlighted text (cf. 4,9w !php)
vnoremap ;r :w !php<CR>
