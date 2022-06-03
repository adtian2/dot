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
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --ts-completer --java-completer' }

call plug#end()
