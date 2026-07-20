" Coc.nvim
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

inoremap <silent><expr> <C-Space>
      \ coc#pum#visible()
      \ ? coc#pum#cancel()
      \ : coc#refresh()

inoremap <silent><expr> <C-@>
      \ coc#pum#visible()
      \ ? coc#pum#cancel()
      \ : coc#refresh()

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) : "\<Tab>" 

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-d>"

nnoremap <C-l> :call coc#float#close_all()<CR>
inoremap <C-l> <Esc>:call coc#float#close_all()<CR>a

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Coc Extensions
nnoremap <silent> <leader>F :call CocAction('format')<CR>

" NerdTree
nnoremap <leader>nt :NERDTreeFocus<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 30

" AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_buffer_nr = 0

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" yggdroot/indentline
augroup IndentLineTerminal
  autocmd!
  autocmd TerminalOpen * setlocal conceallevel=0
  autocmd FileType floaterm setlocal conceallevel=0
augroup END

" Easymotion
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" vim-floaterm and Lazygit
nnoremap <C-t> :FloatermToggle<CR>
tnoremap <C-t> <C-\><C-n>:FloatermToggle<CR>

nnoremap <A-l> :FloatermNext<CR>
nnoremap <A-h> :FloatermPrev<CR>

nnoremap <leader>g :FloatermToggle --name=lazygit lazygit<CR>

augroup FloatermMappings
  autocmd!
  autocmd FileType floaterm tnoremap <buffer> <C-o> <C-\><C-n>0
  autocmd FileType floaterm tnoremap <buffer> <C-l> <C-l>
augroup END

highlight link Floaterm NormalFloat
highlight link FloatermBorder FloatBorder

let g:floaterm_position = 'center'
let g:floaterm_height = 0.9
let g:floaterm_width = 0.9

autocmd QuitPre * silent! FloatermKill!

" vim surround
vnoremap " <Esc>`>a"<Esc>`<i"<Esc>
vnoremap ' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap ( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap [ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap { <Esc>`>a}<Esc>`<i{<Esc>
vnoremap ` <Esc>`>a`<Esc>`<i`<Esc>

" fzf.vim
nnoremap <silent> <leader>f :Files<CR>

" vim-commenter
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>
inoremap <C-_> <Esc>:Commentary<CR>A

" Polyglot
let g:polyglot_disabled = ['markdown', 'json', 'html']

" Hexokinase
let g:Hexokinase_highlighters = [ 
\   'backgroundfull',
\ ]

" undotree
nnoremap <leader>U :UndotreeToggle<CR>

" ====================
" Themes configuration
" ====================

" Tokyio night
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
