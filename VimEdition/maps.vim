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

" --- Native Explore ---
nmap <Leader>E :Explore<CR>

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
nnoremap <Leader>bl :buffers<CR>
nnoremap <Leader>bd :bdelete<CR>

" Tabs
nnoremap <leader>T :tabnew<CR>
nnoremap <M-[> :tabprevious<CR>
nnoremap <M-]> :tabnext<CR>
tnoremap <M-[> <C-\><C-n>:tabprevious<CR>
tnoremap <M-]> <C-\><C-n>:tabnext<CR>

" LazyGit
nnoremap <leader>g :tab terminal ++close lazygit<CR>

" OpenCode
nnoremap <leader>o :tab terminal ++close opencode<CR>

" Ctrl z disabled
nnoremap <C-z> :echo "Don't close vim, keep programming!"<CR>

" Wrap
nnoremap <leader>W :set invwrap<CR>

" Open terminals
nnoremap <leader>vt :vertical terminal<CR>
nnoremap <leader>ht :terminal<CR>

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

