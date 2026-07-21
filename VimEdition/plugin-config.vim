" =============
" Coc.nvim
" =============
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

" =============
" Coc Extensions
" =============
nnoremap <silent> <leader>F :call CocAction('format')<CR>

" Uncomment this if instead NERDTree you want to use coc-explorer
" nnoremap <leader>e <Cmd>CocCommand explorer<CR>

" =============
" NERDTree
" =============
nnoremap <leader>nt :NERDTreeFocus<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 30

" =============
" NERDCommenter
" =============
" Create default mappings? use g instead of leader (it chockes with the change
" command, the mappings are the same but instead of make it with leader it
" uses "g"
" If you want to use the leader just put the NERDCreateDefaultMappings = 1 and
" delete the nmps and xmaps in this section)

let g:NERDCreateDefaultMappings = 0

nmap gcc <Plug>NERDCommenterComment
xmap gcc <Plug>NERDCommenterComment

nmap gcn <Plug>NERDCommenterNested
xmap gcn <Plug>NERDCommenterNested

nmap gc<space> <Plug>NERDCommenterToggle
xmap gc<space> <Plug>NERDCommenterToggle

nmap gcm <Plug>NERDCommenterMinimal
xmap gcm <Plug>NERDCommenterMinimal

nmap gci <Plug>NERDCommenterInvert
xmap gci <Plug>NERDCommenterInvert

nmap gcs <Plug>NERDCommenterSexy
xmap gcs <Plug>NERDCommenterSexy

nmap gcy <Plug>NERDCommenterYank
xmap gcy <Plug>NERDCommenterYank

nmap gc$ <Plug>NERDCommenterToEOL

nmap gcA <Plug>NERDCommenterAppend

imap gcI <Plug>NERDCommenterInsert

nmap gca <Plug>NERDCommenterAltDelims

nmap gcl <Plug>NERDCommenterAlignLeft
xmap gcl <Plug>NERDCommenterAlignLeft

nmap gcb <Plug>NERDCommenterAlignBoth
xmap gcb <Plug>NERDCommenterAlignBoth

nmap gcu <Plug>NERDCommenterUncomment
xmap gcu <Plug>NERDCommenterUncomment


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Keymaps for use ctrl / (are the same but depending of your terminal may work C-_ or C-/)
" " XFCE terminal, Gnome console
" nnoremap <C-_> :call nerdcommenter#Comment('n', 'toggle')<CR>
" xnoremap <C-_> :call nerdcommenter#Comment('x', 'toggle')<CR>gv
" inoremap <C-_> <C-o>:call nerdcommenter#Comment('n', 'toggle')<CR>

"
" " Ghostty
" nnoremap <C-/> :call nerdcommenter#Comment('n', 'toggle')<CR>
" xnoremap <C-/> :call nerdcommenter#Comment('x', 'toggle')<CR>gv
" inoremap <C-/> <C-o>:call nerdcommenter#Comment('n', 'toggle')<CR>

" =============
" AirLine
" =============
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

" =============
" yggdroot/indentline
" =============
augroup IndentLineTerminal
  autocmd!
  autocmd TerminalOpen * setlocal conceallevel=0
  autocmd FileType floaterm setlocal conceallevel=0
augroup END

" =============
" Easymotion
" =============
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" =============
" vim-floaterm and Lazygit
" =============

nnoremap <C-t> :FloatermToggle shell<CR>
tnoremap <C-t> <C-\><C-n>:FloatermToggle shell<CR>


" nnoremap <C-g> :FloatermToggle lazygit<CR>
" tnoremap <C-g> <C-\><C-n>:FloatermToggle lazygit<CR>

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

" =============
" vim surround
" =============
vnoremap " <Esc>`>a"<Esc>`<i"<Esc>
vnoremap ' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap ( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap [ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap { <Esc>`>a}<Esc>`<i{<Esc>
vnoremap ` <Esc>`>a`<Esc>`<i`<Esc>

" =============
" fzf.vim
" =============
nnoremap <silent> <leader>f :Files<CR>


" =============
" Polyglot
" =============
let g:polyglot_disabled = ['markdown', 'json']

" =============
" Hexokinase
" =============
let g:Hexokinase_highlighters = [ 
\   'backgroundfull',
\ ]

" =============
" undotree
" =============
nnoremap <leader>U :UndotreeToggle<CR>

" ====================================================
" Themes configuration
" ====================================================

" =============
" Tokyio night
" =============
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
