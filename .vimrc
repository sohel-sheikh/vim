set nocompatible " be iMproved, required by vundle

filetype off "required by vundle

set rtp+=~/.vim/bundle/Vundle.vim

set ruler "display row and column of cursor in bottom status bar

set relativenumber "display line number relative to current line

set smarttab "be smart when using tabs

set tabstop = 4
set shiftwidth = 4
set ai "auto indent
set wrap "wrap lines

set autoread "to autoread when file is changed from outside

set showcmd
set laststatus = 2
set cmdheight = 1

set incsearch "highlight text while typing search

" set list "show whitespace chars
" set listchars=eol:$,tab:>\ ,trail:x

let mapleader="\<Space>" "with mapleader its possible to do extra key combinations
nmap <leader>w :w!<cr> "nmap is normal mode map, to save current file
nmap <leader>q :q!<cr>
nmap <leader>e :wq!<cr>

inoremap jk <ESC> "map ESC to jk in insert mode
"noremap ensure non-recursive map (:help noremap - for more help)

"unmap arrow keys (for your own good)
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
"insert mode
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
"visual mode
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
