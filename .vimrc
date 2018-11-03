" ~/.vimrc
"

" no vi compat
set nocompatible

" filetype func off
filetype off

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" start- all plugins below

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'airblade/vim-gitgutter'

" stop - all plugins above
call vundle#end()

" filetype func on
filetype plugin indent on


" Merlin edited from here:

let python_highlight_all=1
syntax on
set cursorline
" jedi-vim config
let g:jedi#popup_on_dot = 0


" set color
set background=dark
syntax enable

" Nerdtree Shortcut
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Code Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Make indentation & line formatting PEP 8 compliant
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix|

" Flag unncessary whitespaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF8 Support
set encoding=utf-8

" Line numbering
set nu
set relativenumber

" lightline fix
set laststatus=2

" colorscheme fix
if $COLORTERM == 'truecolor'
  set t_Co=256
  colorscheme gruvbox
endif
