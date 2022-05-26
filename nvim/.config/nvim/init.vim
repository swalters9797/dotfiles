" Plugin Section
call plug#begin()
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim' " Need to run brew install ripgrep for grep commands to work
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'numToStr/Comment.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'lukas-reineke/lsp-format.nvim' " auto format on save
call plug#end()

" Syntax highlights
syntax on
set nohlsearch

" search
set incsearch
set ic
set smartcase

" Colors
colorscheme gruvbox
highlight Normal ctermbg=none
" set background=dark

" line numbers
set nu 
nmap <leader>nm :set rnu!<CR>

" indentation
set smartindent 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" clipboard
set clipboard=unnamed

" undo
set undodir=~/.local/nvim/undodir
set undofile

" update path
set path+=**

" show matching brackets
set showmatch

" enable mouse
set mouse=a

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

lua require('init')
