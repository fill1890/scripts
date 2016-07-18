set nocompatible
filetype off

" Include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

call vundle#end()

filetype plugin indent on

syntax enable		"Add syntax
set tabstop=4		"Number of visual places per tab
set softtabstop=4	"Number of spaces in tab when editing
set expandtab		"Tabs are spaces
set shiftwidth=4    "Autoindent 4 spaces

autocmd BufNewFile,BufRead *.asm    set syntax=nasm

set number  		"Show line numbers
filetype indent on	"load filetype-dependent indent files
set lazyredraw		"Redraw only when necessary
set showmatch		"Highlight matching brackets

filetype plugin indent on

set incsearch		"Dynamic searching

set foldenable		"Enable folding
set foldlevelstart=10	"Open most folds by default
set foldnestmax=10	"10 nested fold max
"space open/closes folds
noremap <space> za
set foldmethod=syntax	"fold based on indent level
set foldcolumn=1

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"Edit vimrc/bashrc and load vimrc bindings
nnoremap ,ev :vsp $MYVIMRC<CR>
nnoremap ,eb :vsp ~/.bash_profile<CR>
nnoremap ,sv :source $MYVIMRC<CR>

" Exit normal mode with jk
" Wait 500ms to type
inoremap jk <Esc>

" Run interpreted languages (shebang line) with ,r
noremap ,r :w<CR> :! ./%<CR>

"Colour scheme
set t_Co=256
"colorscheme PaperColor

set cursorline

set backupdir=/tmp
set directory=/tmp

set shiftround

" ?
set showcmd

ab destory destroy

set gdefault

set encoding=utf-8

set splitright
set splitbelow

set scrolloff=3

"set laststatus=2
set ruler
set title

" I need to learn to use hjkl
map <up> <nop>
imap <up> <nop>
map <down> <nop>
imap <down> <nop>
map <left> <nop>
imap <left> <nop>
map <right> <nop>
imap <right> <nop>

set wildmenu

nnoremap j gj
nnoremap k gk

set modelines=1

" vim:foldmethod=marker:foldlevel=0
