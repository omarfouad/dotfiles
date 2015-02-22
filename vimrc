set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/airblade/vim-gitgutter.git'
Plugin 'edkolev/tmuxline.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'git://github.com/msanders/snipmate.vim.git'
Plugin 'https://github.com/mattn/emmet-vim.git'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/marijnh/tern_for_vim.git'

filetype plugin indent on

set number
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme spacegray
set nowrap
set history=1000
set nobackup
set noswapfile
set mouse=a
set laststatus=2
set copyindent
set shiftround
set noet ci pi sts=0 sw=4 ts=4
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set undolevels=1000
set nobackup
set noswapfile
set wildmenu
set wildmode=longest:full,full
set title
set visualbell
set noerrorbells
set lazyredraw
set ttyfast
set ttymouse=xterm

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif


let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_echo=0
let g:airline_symbols.linenr = '¶'
let g:airline#extensions#whitespace#enabled=0
function! AirlineInit()
	let g:airline_section_a = airline#section#create_left(['mode','branch', 'iminsert'])
	let g:airline_section_b = airline#section#create_left(['filetype','paste','%f'])
	let g:airline_section_c = airline#section#create_right([])
	let g:airline_section_x = airline#section#create([])
	let g:airline_section_y = airline#section#create_left(['hunks','L%l-C%c'])
	let g:airline_section_z = airline#section#create_right(['❤ %p%%', 'OF-VIM', ''])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

""" Mappings """
map <C-n> :NERDTreeToggle<CR>
