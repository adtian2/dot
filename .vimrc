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

"tab completion
set wildmode=longest,list,full
set wildmenu

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

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"vim-plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" run :PlugInstall to install
call plug#begin('~/.vim/plugged')

Plug 'tmsvg/pear-tree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
