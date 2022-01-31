syntax on
"https://github.com/tomasr/molokai
colorscheme molokai

set tabstop=4 softtabstop=4
set shiftwidth=4
set backspace=2
set expandtab
set smartindent
set nu
set relativenumber
set nohlsearch
set noerrorbells
set noswapfile
set incsearch
set scrolloff=8
let loaded_matchparen = 1
set modeline
set showmatch

"trims whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup Trimmer
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

"vim-plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" run :PlugInstall to install
call plug#begin('~/.vim/plugged')

Plug 'tmsvg/pear-tree'

call plug#end()
