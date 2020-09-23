set nocompatible

syntax on
filetype plugin on
filetype indent on

set number
set relativenumber

set ai
set showcmd

set updatetime=50

set incsearch
set path+=**

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set scrolloff=8

set cmdheight=2
set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" ====== plugins ======
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'sheerun/vim-polyglot'

Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'

Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'

call plug#end()
" ====== plugins ======

" ====== key bindins ======
let mapleader = "\<Space>"

inoremap jk <Esc>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>e :wq<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
" ====== key bindins ======

" ====== theme settings ======
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set background=dark
" ====== theme settings ======

" ====== vim go (polyglot) settings ======
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
" ====== vim go (polyglot) settings ======

" ====== variables for vim go ======
let g:go_fmt_command = "goimports"
" ====== variables for vim go ======

" ====== commands ======
command! MakeTags !ctags -R .

au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview

au FileType go nmap <leader>v <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>f <Plug>(go-fmt)
au FileType go nmap <leader>t :!go test -v --bench . --benchmem<cr>
au FileType go let g:go_fmt_command = "goimports"
" ====== commands ======

