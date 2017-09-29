" vundle
set nocompatible              " be iMproved, required
filetype on                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'mileszs/ack.vim'
" Python auto-indentation
Plugin 'vim-scripts/indentpython.vim'
" Autocomplete
Bundle 'Valloric/YouCompleteMe'
" Python syntax check on save
Plugin 'scrooloose/syntastic'
" PEP8 checking
Plugin 'nvie/vim-flake8'
" File browser
Plugin 'scrooloose/nerdtree'
" Detailed status bar
" Disabled due to large number of dependencies
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" curated from https://dougblack.io/words/a-good-vimrc.html

" colors
syntax enable           " enable syntax processing
colorscheme dracula

" tabs and spaces
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " use 4 spaces when indenting
set expandtab           " tabs are spaces

" ui config
set number              " show line numbers
set showcmd             " show command in bottom bar
set showmatch           " highlight matching [{()}] 

" leader shortcuts
let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>
" open ack.vim
nnoremap <leader>a :Ack! 

" searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" use smartcase search
set ignorecase
set smartcase
" turn off search highlight
" nnoremap <leader><space> :nohlsearch<CR>
nnoremap <silent> <leader><space> :noh<CR>

" folding
set foldenable          " enable folding
set foldlevelstart=100  " open most folds by default
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" YCM
" The former line ensures that the autocomplete window goes away when you’re
" done with it, and the latter defines a shortcut for goto definition.
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" file browse ignore .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] 

" NERDTree - toggle key
map <leader>. :NERDTreeToggle<CR>