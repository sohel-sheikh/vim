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

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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
nnoremap <silent> <leader>o :Files<CR>
nnoremap <silent> <leader>s: :History:<CR>
nnoremap <silent> <leader>s/ :History/<CR>
nnoremap <silent> <leader>sl :BLines<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>mr :Marks<CR>
nnoremap <silent> <leader>mp :Maps<CR>
nnoremap <silent> <leader>t :Windows<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>ez :e $MYZSH<CR>
nmap <silent> <leader>sz :!source $MYZSH<CR>
nmap <silent> <leader>eb :e $MYBASH<CR>
nmap <silent> <leader>sb :!source $MYBASH<CR>

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

" ====== prettier settings ======
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
au InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
" ====== prettier settings ======

" ====== eslint settings ======
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" ====== eslint settings ======

" ====== commands ======
command! MakeTags !ctags -R .

au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview

au FileType go nmap <leader>v <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>f <Plug>(go-fmt)
au FileType go nmap <leader>t :!go test -v --bench . --benchmem<cr>
au FileType go let g:go_fmt_command = "goimports"
au FileType go nmap <leader>ct :GoCoverageToggle<cr>

au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
" ====== commands ======

