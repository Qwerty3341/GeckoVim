" =========================================================================================
" Editor Config
" =========================================================================================
set nocompatible
set number
set relativenumber
set mouse=a
set showcmd
set ruler 
set laststatus=2
set nowrap
set autoread
set noshowmode
set clipboard=unnamedplus
set encoding=UTF-8
syntax on
set showmatch
set lazyredraw
set updatetime=300

" set cursorline
" set termguicolors

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

" Cursor configurations
let &t_EI = "\e[2 q"   " Normal => bloque
let &t_SI = "\e[6 q"   " Insert => barra vertical
let &t_SR = "\e[4 q"   " Replace => subrayado

" =========================================================================================
" Maps Config
" =========================================================================================

let mapleader=" "

" write and quit
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

" Indent
inoremap <S-Tab> <C-d>
nnoremap <S-Tab> <<
nnoremap <Tab> >>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Surround 
xnoremap s" c"<C-r>""<Esc>
xnoremap s' c'<C-r>"'<Esc>
xnoremap s( c(<C-r>")<Esc>
xnoremap s[ c[<C-r>"]<Esc>
xnoremap s{ c{<C-r>"}<Esc>
xnoremap s` c`<C-r>"`<Esc>

" Fit panel's size
nnoremap <C-S-Right> :vertical resize +10<CR>
nnoremap <C-S-Left>  :vertical resize -10<CR>
nnoremap <C-S-Up>    :resize +5<CR>
nnoremap <C-S-Down>  :resize -5<CR>

tnoremap <C-S-Right> <C-w>:vertical resize +10<CR>
tnoremap <C-S-Left>  <C-w>:vertical resize -10<CR>
tnoremap <C-S-Up>    <C-w>:resize +5<CR>
tnoremap <C-S-Down>  <C-w>:resize -5<CR>

" --- netrw like nerdtree ---
nmap <Leader>e :Lexplore<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_special_syntax = 1
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_hide = 1
let g:netrw_keepdir = 0

" Backspace improved
"vnoremap <BS> "_d
"nnoremap <BS> "_x

" Enter improved
nnoremap <CR> o<Esc>

" Change improved
nnoremap c "_c
xnoremap c "_c
nnoremap C "_C
xnoremap C "_C

" Improved panels
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>

" Search and sustitute
" Note:
"   escape is for the / and \
"   if you want to substitute one of these characters
"   you must put // insted of /

xnoremap F "zy:%s/<C-r>=escape(@z, '/\')<CR>//gc<Left><Left><Left>
xnoremap f "zy:.,$s/<C-r>=escape(@z, '/\')<CR>//gc<Left><Left><Left>

" Panels improved
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-l> <C-w>l

" Move into the terminal
augroup TerminalMappings
	autocmd!
	autocmd TerminalOpen * tnoremap <buffer> <C-o> <C-\><C-n>0
augroup END

" Buffers
nnoremap <Leader>] :bnext<CR>
nnoremap <Leader>[ :bprevious<CR>
nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>bl :buffers<CR>

" Tabs
nnoremap <leader>T :tabnew<CR>
nnoremap <leader>{ :tabprevious<CR>
nnoremap <leader>} :tabnext<CR>

" Ctrl z disabled
nnoremap <C-z> :echo "Don't close vim, keep programming!"<CR>

" =========================================================================================
" Gvim config
" =========================================================================================
if has('gui_running')
	set guifont=Monospace\ 14
	set background=dark
	colorscheme industry
endif

