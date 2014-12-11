set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" vim-airline
Plugin 'bling/vim-airline'

" NERD tree
Plugin 'scrooloose/nerdtree'

" NERD Commenter
Plugin 'scrooloose/nerdcommenter'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" Tagbar
Plugin 'majutsushi/tagbar'

" JSON.vim
Plugin 'elzr/vim-json'

" DoxygenToolkit.vim
Plugin 'DoxygenToolkit.vim'

" vim-multiple-cursors
"Plugin 'terryma/vim-multiple-cursors'

" vim-bookmarks
Plugin 'MattesGroeger/vim-bookmarks'

" EasyGrep
Plugin 'EasyGrep'

" repeat.vim
" Plugin 'tpope/vim-repeat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set laststatus=2
set cindent
set autoindent
set nu
set sw=4
set ts=4
highlight Visual ctermbg=254 guibg=#5D5D5D

nmap nt :NERDTreeToggle<CR>
nmap tb :TagbarToggle<CR>
nmap <F5> <ESC>:w<CR>:!cd ./lib;clear;make<CR>
nmap <F6> :mak<CR>
nmap <F10> :q<CR>

set tags+=/home/fmln/tags

set fencs=utf8,euc-kr,cp949,cp932,euc-jp,shift-jis,big5,latin1,ucs-2le
set encoding=utf-8 " Necessary to show Unicode glyphs
set cursorline

" Ctrlp Option
set runtimepath^=~/.vim/bundle/ctrlp.vim
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRU<CR>

" Tab Option
nmap <F2> <ESC>:tabnew<CR>
nmap <F3> <ESC>:tabprevious<CR> 
nmap <F4> <ESC>:tabnext<CR>
nmap <leader>tn :tabedit new<CR>
nmap <leader>th :tabprevious<CR>
nmap <leader>tl :tabnext<CR>
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt
nmap <leader>9 9gt

" Airline Option
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'

" Bookmark Option
let g:bookmark_sign = '>>'
let g:bookmark_auto_save = 0
