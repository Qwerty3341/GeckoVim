call plug#begin()
	" IDE
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'
	Plug 'yggdroot/indentline'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'voldikss/vim-floaterm'
	Plug 'easymotion/vim-easymotion'
	Plug 'mhinz/vim-signify'
	Plug 'tpope/vim-commentary'
    Plug 'sheerun/vim-polyglot'
	Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'mbbill/undotree'

	" Themes
	Plug 'ayu-theme/ayu-vim' 
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'cocopon/iceberg.vim'
	Plug 'srcery-colors/srcery-vim'
call plug#end()
