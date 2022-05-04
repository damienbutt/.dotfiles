set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set sw=4
set title
set wrap
set encoding=utf-8
set number
set numberwidth=1
set relativenumber
set laststatus=2
set mouse=a
set clipboard=unnamedplus
packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro
