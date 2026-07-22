" Editor Config
set nocompatible
set number
set relativenumber
set mouse=a
set showcmd
" set ruler 
" set laststatus=2
set nowrap
set cursorline
set autoread
set termguicolors
set noshowmode
set clipboard=unnamedplus
set encoding=UTF-8
syntax on
set showmatch
set lazyredraw
set updatetime=300

" Autocomplete
set completeopt=menu,menuone,noselect
set wildmenu
set wildmode=longest:full,full

" Indent
filetype plugin indent on
set smartindent
set cindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent

" Improved Search
set incsearch
set hlsearch
set ignorecase
set smartcase

"Configuracion del cursor en los modos
let &t_EI = "\e[2 q"   " Normal => bloque
let &t_SI = "\e[6 q"   " Insert => b barra vertical
let &t_SR = "\e[4 q"   " Replace => subrayado

let mapleader=" "

" Plugin config
so ~/.vim/plugin-config.vim

" Plugins
so ~/.vim/plugins.vim

" Maps
so ~/.vim/maps.vim

" Theme
set background=dark
colorscheme retrobox
highlight Normal cterm=None

" Gvim Font and Theme Config (uncomment only if gvim don't get any config)
" if has('gui_running')
" 	set guifont=Liberation\ Mono\ 14
" 	set background=dark
" 	colorscheme industry
" endif
