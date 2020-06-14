function! PrintError(msg) abort
    execute 'normal! \<Esc>'
    echohl ErrorMsg
    echomsg a:msg
    echohl None
endfunction

if isdirectory(expand('~/.vim/bundle/Vundle.vim'))
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plugin 'SirVer/ultisnips'

call vundle#end()
else
call PrintError("Install Vundle.vim:")
call PrintError("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
endif
