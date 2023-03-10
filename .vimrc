" User Default ===========================
syntax on

set number 
set showmatch
set autoindent
set hlsearch

set tabstop=4
set shiftwidth=4


" Plugin (Vundle)======================= 

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
" Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

