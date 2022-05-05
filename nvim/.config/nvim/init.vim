sset runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" set sw=4
set title
set wrap
set encoding=utf-8
" set number
set numberwidth=1
" set relativenumber
" set laststatus=2
set mouse=a
set clipboard=unnamedplus


packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro



set formatoptions-=cro
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=4

" plugins
" download and install vim-plug if not installed
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME}/nvim/autoload/plug.vim"'))
	silent !mkdir -p ${XDG_CONFIG_HOME}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" plugin list
call plug#begin(system('echo -n "${XDG_CONFIG_HOME}/nvim/plugged"'))

Plug 'tiagovla/tokyodark.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lualine/lualine.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'honza/vim-snippets'
Plug 'vimwiki/vimwiki'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

" Support 24-bit color
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
if (has("termguicolors"))
	set termguicolors
endif

" Aesthetics
set background=dark
"  colorscheme tokyodark
"  let g:lightline = {'colorscheme' : 'tokyonight'}
set laststatus=2

" line numbers
set number
set relativenumber

hi Normal guibg=NONE ctermbg=NONE

syntax on

" fzf search
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <C-g> :GFiles<CR>

let g:Hexokinase_highlighters = ['virtual']

" emmet shortcuts
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" coc settings
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-json',
  \ ]

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <A-C-j> yyp
nnoremap <A-C-k> yyP

let g:vimwiki_list = [{'path': '~/documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
