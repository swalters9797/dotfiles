" Plugin Section
call plug#begin()
 	Plug 'neoclide/coc.nvim', {'branch': 'release'} " likely need to install node and yarn, see github for instructions (run yarn install inside coc.vim directory)
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-go', 'coc-yaml']

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                 " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file

" NERDTree mappings
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>

" navigating splits mappings
nnoremap <silent><c-h> <c-w>h
nnoremap <silent><c-j> <c-w>j
nnoremap <silent><c-k> <c-w>k
nnoremap <silent><c-l> <c-w>l

" navigating tabs mappings
nnoremap <leader>H :tabprevious<CR>
nnoremap <leader>L :tabnext<CR>
nnoremap <leader>1 1gt<CR>
nnoremap <leader>2 2gt<CR>
nnoremap <leader>3 3gt<CR>
nnoremap <leader>4 4gt<CR>
nnoremap <leader>5 5gt<CR>
nnoremap <leader>6 6gt<CR>
nnoremap <leader>7 7gt<CR>
nnoremap <leader>8 8gt<CR>
nnoremap <leader>9 9gt<CR>
nnoremap <leader>0 :tablast<CR>
