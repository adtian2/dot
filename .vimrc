syntax on
"https://github.com/tomasr/molokai
colorscheme molokai

set tabstop=2 softtabstop=2
set shiftwidth=2
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

"fix slow Typescript syntax
"https://jameschambers.co.uk/vim-typescript-slow
set re=0

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
" run :PlugInstall to install
call plug#begin('~/.vim/plugged')

Plug 'tmsvg/pear-tree'

call plug#end()

"vundle
" run :PluginInstall to install
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on
