filetype off  " required!
syntax on

call plug#begin('~/.config/nvim/plugged')

Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'roxma/vim-paste-easy'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thinca/vim-quickrun'
Plug 'kshenoy/vim-signature'
Plug 'djoshea/vim-autoread'
Plug 'chemzqm/wxapp.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

let mapleader = ','
let g:mapleader = ','
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_theme = "solarized"
let g:deoplete#enable_at_startup = 1
let NERDTreeIgnore = ['\.pyc$']
let g:goyo_width = 130

set background=dark
set encoding=utf-8
set expandtab
set smarttab
set nobackup
set nowb
set noswapfile
set number
set number
set relativenumber
set foldenable
set foldmethod=indent
set foldlevel=2
set shiftwidth=2
set tabstop=2
set lazyredraw
set undofile
set undodir=/tmp/
set cursorline
set cursorcolumn
set splitbelow
set splitright

colorscheme solarized

map <silent> <leader><CR> :noh<CR>
map <leader>w :w<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>nb :NERDTreeFromBookmark
map <leader>pp :setlocal paste!<CR>
map <leader>g :Ack!
nmap <leader>js :call JsBeautify()<CR>
nmap <leader>z :Goyo<CR>
nmap <leader>s :%s//g<left>
nmap <leader>h :tabprevious<CR>
nmap <leader>l :tabnext<CR>
nmap <leader>c :SClose<CR>
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>[ :vertical resize -3<CR>
nmap <leader>] :vertical resize +3<CR>
nmap <leader>- :resize -3<CR>
nmap <leader>= :resize +3<CR>
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <leader><F12> :QuickRun<CR>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>
noremap <leader>` :TagbarToggle<CR>
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-i>"
nmap <silent> <leader>r :so $MYVIMRC<CR>
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    nmap <BS> <C-W>h
    nmap <leader>tv :vsp term://zsh<CR>
    nmap <leader>tn :tabnew term://zsh<CR>
    nmap <leader>th :split term://zsh<CR>
endif

highlight SignColumn ctermbg=8
"Remember Last Position
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
