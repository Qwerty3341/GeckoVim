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
nmap <Leader>e :Explore<CR>

" Backspace improved
vnoremap <BS> "_d
nnoremap <BS> "_x

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

" Wrap
nnoremap <leader>W :set invwrap<CR>

" Transparency
let t:is_transparent = 0
function! Toggle_Transparency()
  if t:is_transparent == 0
    let g:saved_guibg = synIDattr(synIDtrans(hlID('Normal')), 'bg#', 'gui')
    let g:saved_ctermbg = synIDattr(synIDtrans(hlID('Normal')), 'bg#', 'cterm')
    if empty(g:saved_guibg)
      let g:saved_guibg = 'NONE'
    endif
    if empty(g:saved_ctermbg)
      let g:saved_ctermbg = 'NONE'
    endif

    hi Normal guibg=NONE ctermbg=NONE
    hi NonText guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    hi VertSplit guibg=NONE ctermbg=NONE
    hi StatusLine guibg=NONE ctermbg=NONE
    hi StatusLineNC guibg=NONE ctermbg=NONE
    hi Terminal guibg=NONE ctermbg=NONE

    let t:is_transparent = 1
  else

    execute 'hi Normal guibg=' . g:saved_guibg . ' ctermbg=' . g:saved_ctermbg
    execute 'hi NonText guibg=' . g:saved_guibg . ' ctermbg=' . g:saved_ctermbg
    execute 'hi EndOfBuffer guibg=' . g:saved_guibg . ' ctermbg=' . g:saved_ctermbg
    execute 'hi SignColumn guibg=' . g:saved_guibg . ' ctermbg=' . g:saved_ctermbg
    execute 'hi Terminal guibg=' . g:saved_guibg . ' ctermbg=' . g:saved_ctermbg

    let t:is_transparent = 0
  endif
endfunction

nnoremap <leader>tr :call Toggle_Transparency()<CR>


" =========================================================================================
" Gvim config
" =========================================================================================
if has('gui_running')
	set guifont=Monospace\ 14
	set background=dark
	colorscheme industry
endif

