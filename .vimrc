" Andrew Walls

" Colours {{{
syntax enable		"Add syntax
"Colour scheme
set t_Co=256

set background=light

let g:airline_theme='one'
let g:airline_powerline_fonts = 1
colorscheme one

highlight CursorLineNr ctermfg=0
" }}}
" Misc {{{
" Exit normal mode with jk
" Wait 500ms to type
inoremap jk <Esc>
ab destory destroy
set nocompatible
set backupdir=/tmp
set directory=/tmp

set encoding=utf-8
set wildmenu

" Run interpreted languages (shebang line) with ,r
noremap ,r :w<CR> :! ./%<CR>
" }}}
" Spaces & Tabs {{{
filetype plugin indent on
set shiftround
filetype indent on	"load filetype-dependent indent files
set tabstop=4		"Number of visual places per tab
set softtabstop=4	"Number of spaces in tab when editing
set expandtab		"Tabs are spaces
set shiftwidth=4    "Autoindent 4 spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\S\s\+$/
" }}}
" UI Config {{{
set modelines=1
set scrolloff=3
set splitright
set splitbelow
set showcmd
set cursorline
set ruler
set title
set laststatus=2
set lazyredraw		"Redraw only when necessary
set relativenumber
set number  		"Show line numbers

set ttimeoutlen=10
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '│'

function! NumberToggle()
    if(&relativenumber == 1)
        set relativenumber!
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
inoremap <C-n> :call NumberToggle()<cr>

set colorcolumn=79
highlight ColorColumn ctermbg=168

" }}}
" Searching {{{
set gdefault
set incsearch		"Dynamic searching
set showmatch		"Highlight matching brackets
" }}}
" Folding {{{

set foldenable		"Enable folding
set foldlevelstart=10	"Open most folds by default
set foldnestmax=10	"10 nested fold max

"space open/closes folds
noremap <space> za
set foldmethod=syntax	"fold based on indent level
set foldcolumn=1
" }}}
" Line Shortcuts {{{
" I need to learn to use hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap ,n <Esc>$i<cr><Esc>O

" }}}
" Leader Shortcuts {{{
"Edit vimrc/bashrc and load vimrc bindings
nnoremap ,ev :vsp $MYVIMRC<CR>
nnoremap ,eb :vsp ~/.bash_profile<CR>
nnoremap ,sv :source $MYVIMRC<CR>
" }}}
" Launch Config {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype on
" }}}
" Autogroups {{{
augroup configgroup
    autocmd BufNewFile,BufRead *.json set ft=javascript
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
    autocmd BufNewFile,BufRead *.asm    set syntax=nasm
augroup END
" }}}

" vim:foldmethod=marker:foldlevel=0
