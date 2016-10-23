set modelines=0
set nomodeline

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> *
vmap  "*d
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F2> :w|!python %
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
let &cpo=s:cpo_save
unlet s:cpo_save
set encoding=utf-8
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=En
set shiftwidth=2
set smarttab
set updatecount=0
set t_Co=256
"colors inkpot
" Visit http://www.vi-improved.org/color_sampler_pack/ for screenshots

" Solarized color scheme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256      " use solarized 256 fallback
" see: http://www.terminally-incoherent.com/blog/2012/10/17/vim-solarized-and-tmux/

" Window geometry
"set textwidth=72
"set window=46
"set lines=47
"set columns=80

" Turn on syntax highlighting and autoindenting
syntax enable
filetype indent on

" set autoindent width to 2 spaces (see http://www.vim.org/tips/tip.php?tip_id=83)
set nu
set et
set sw=2
set smarttab
set tw=72

" if you want word wrapping, but only want line breaks inserted when you explicitly press the Enter key: 
set wrap
set linebreak

" list disables linebreak
set nolist

" This will get Vim to wrap existing text as desired. wrap tells Vim to word wrap visually (as opposed to changing the text in the buffer), and linebreak tells Vim to only wrap at a character in the breakat option (by default, this includes " ^I!@*-+;:,./?" (note the inclusion of " " and that ^I is the control character for Tab)). 
" In addition, you will need to prevent Vim from automatically inserting line breaks in newly entered text. The easiest way to do this is: 
set textwidth=0
set wrapmargin=0

" If you want to keep your existing 'textwidth' settings for most lines in your file, but not have Vim automatically reformat when typing on existing lines, you can do this with: 
set formatoptions+=l

" Bind <f2> key to running the python interpreter on the currently active file.  (curtesy of Steve Howell from email dated 1 Feb 2006).
map <f2> :w\|!python %<cr>
" vim: set ft=vim :

" Mouse
set mouse=a
set ttymouse=xterm

set ruler
