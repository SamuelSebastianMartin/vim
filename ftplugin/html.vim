 " Make indents all 2 spaces for html files
 autocmd Filetype html setlocal ts=2 sw=2 expandtab

 " Show line numbers
 set nu

 inoremap ;1 <Esc>ggi<!DOCTYPE html><CR><html><CR><head><CR><title></title><CR><script src="****.js"></script><CR><link rel="stylesheet" type="text/css" href="****.css"><CR></head><CR><body><CR></body><CR></html><Esc>
 inoremap ;! <Esc>ggi<!DOCTYPE html><CR><html><CR><head><CR><title></title><CR><script src="****.js"></script><CR><link rel="stylesheet" type="text/css" href="****.css"><CR></head><CR><body><CR></body><CR></html><Esc>
 nnoremap ;1 ggi<!DOCTYPE html><CR><html><CR><head><CR><title></title><CR><script src="****.js"></script><CR><link rel="stylesheet" type="text/css" href="****.css"><CR></head><CR><body><CR></body><CR></html><Esc>
 nnoremap ;! ggi<!DOCTYPE html><CR><html><CR><head><CR><title></title><CR><script src="****.js"></script><CR><link rel="stylesheet" type="text/css" href="****.css"><CR></head><CR><body><CR></body><CR></html><Esc>

" Useful html tag mappings
inoremap ;h <h1></h1><Esc>F<i
nnoremap ;h i<h1></h1><Esc>F<i
inoremap ;p <p></p><Esc>F<i
nnoremap ;p i<p></p><Esc>F<i
inoremap ;a <a href="#"></a><Esc>F<i
nnoremap ;a i<a href="#"></a><Esc>F<i
inoremap ;s <table><CR><tr><CR></tr><CR></table><Esc>kO<td></td><Esc>F<i
inoremap ;div <div class=""></div><ESC>F<i
nnoremap ;div i<div class=""></div><ESC>F<i
