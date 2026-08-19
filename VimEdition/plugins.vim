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
	Plug 'preservim/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'voldikss/vim-floaterm'
	Plug 'easymotion/vim-easymotion'
    Plug 'sheerun/vim-polyglot'
	" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'chrisbra/Colorizer'
	Plug 'mbbill/undotree'
	Plug 'wolandark/vim-loremipsum'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	" Plug 'mhinz/vim-signify' " Use only if you use another version system
	Plug 'honza/vim-snippets'
	Plug 'github/copilot.vim'

	" Themes
	Plug 'ayu-theme/ayu-vim' 
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'srcery-colors/srcery-vim'
call plug#end()
