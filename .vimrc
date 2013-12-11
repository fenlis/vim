" comment here

set nu
set tabstop=4
set ai
set wmnu
set mouse=an
set tags=tags;/.

" Enable intent with Tab, Shift-Tab
vmap <Tab> >gv 
vmap <S-Tab> <gv

" Key Mappings
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'fholgado/minibufexpl.vim'
Bundle 'wesleyche/SrcExpl'
Bundle 'wesleyche/Trinity'
" ...
" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'AutoComplPop'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

so ~/.vim/configs/srcexpl.vim
so ~/.vim/configs/trinity.vim
so ~/.vim/configs/cscope.vim

