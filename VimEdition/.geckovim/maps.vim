" write and quit
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

" Indent
" inoremap <S-Tab> <C-d>
nnoremap <S-Tab> <<
nnoremap <Tab> >>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Surround (if you don't want to use the plugin "vim surround")
" xnoremap s" c"<C-r>""<Esc>
" xnoremap s' c'<C-r>"'<Esc>
" xnoremap s( c(<C-r>")<Esc>
" xnoremap s[ c[<C-r>"]<Esc>
" xnoremap s{ c{<C-r>"}<Esc>
" xnoremap s` c`<C-r>"`<Esc>

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
" Uncomment this maps if you dont want to use the plugin tmux navigator
" noremap <C-h> <C-w>h
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-l> <C-w>l

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

" Tabs
nnoremap <leader>T :tabnew<CR>
nnoremap <leader>{ :tabprevious<CR>
nnoremap <leader>} :tabnext<CR>

" Ctrl z disabled
nnoremap <C-z> :echo "Don't close vim, keep programming!"<CR>

