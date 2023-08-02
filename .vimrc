"https://github.com/tomasr/molokai
colorscheme molokai

syntax on
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
set splitbelow

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
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tmsvg/pear-tree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
