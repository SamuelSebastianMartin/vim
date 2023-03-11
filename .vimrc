call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentaryn([PLUGIN_DIR])'
call plug#end()
"Allow different behaviour for different filetypes
filetype on
filetype plugin on
filetype indent on

set omnifunc=syntaxcomplete#Complete

"number of spaces in a TAB
set tabstop=4

"number of spaces a tab counts for when editing. So this value is the number
"of spaces that is inserted when you hit <TAB> and also the number of spaces
"that are removed when you backspace
set softtabstop=4

"<TAB> just becomes a shortcut for "insert four spaces
set expandtab

"map jk or kj onto <Esc>
imap kj <Esc>
imap jk <Esc>
imap JK <Esc>
imap KJ <Esc>

" Avoid <C-W> when changing windows, as this closes the
" browser window if you have the wrong window selected.
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

"put blue bar with filename at bottom of screen
set laststatus=2


set nocp                    " 'compatible' with Vi is not set
syntax enable
filetype plugin on          " plugins are enabled
set path+=**    "puts sub-directories on path
set wildmenu    "Offers suggestion for name completion in file search


"Fold text so functions are collapsed ('zR' will undo)
set foldmethod=indent
"set foldmethod=manual

" Mark trailing white space with '.' and tabs with a triangle.
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" highlight searchs
set hlsearch " `nohl` to switch off
" highlight as typing proceeds (before hitting <C-R>
set incsearch

"Remove search highlights on refresh <C-L>
nnoremap <C-L> :nohl<CR><C-L>

" set 'Y' to yank to end of line, like 'C' & 'D'
map Y y$

"Hide all the ~ below text
highlight NonText guifg=bg

" Stop file proliferation
set nobackup
set noswapfile
set nowritebackup


" Improve display of paired brackets & parentheses
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" make cursor 'block' in Normal, and I bar in Insert
let &t_ti.="\<Esc>[1 q"
let &t_SI.="\<Esc>[5 q"
let &t_EI.="\<Esc>[1 q"
let &t_te.="\<Esc>[0 q"


" Settings for 'netrw' FIle explorer tree.
" Invoke with Explore or 'Vexplore' 'Vex' 'Sex'
" tree view on file picker.
let g:netrw_liststyle=3 
" Open in right split
let g:netrw_altv=1
" No banner
let g:netrw_banner = 0
" Open in previous window.
let g:netrw_browse_split = 4
" take up 15% of window.
let g:netrw_winsize = 15
"    Other stuff to make projects like NERD-tree; ie.
"    Opening cwd in left pane on starting vim.
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"Set colorscheme to bluegrey - comment out for normal black background
"colorscheme morning


"highight the cursor line 
set cursorline
"highlight CursorLine ctermbg=grey
highlight CursorLine ctermbg=black
" but don't have the underline
:hi CursorLine cterm=none

"set relativenumber

" colorscheme murphy

"Stop mouseclicks working. This means one can click on a Vim
"window without jumping to the (random) line that was clicked.
"Note: this does not disable other mouse commands.
set ttymouse=

" Stop bright highlights of spell check
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=brown

