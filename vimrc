set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" python
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

"filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"find 
Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nu
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" YouCompleter me  
let g:ycm_autoclose_preview_window_after_completion=1
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python let g:nerdtree_tabs_open_on_console_startup=1
autocmd FileType python let g:nerdtree_tabs_smart_startup_focus
autocmd FileType python let g:pydiction_location= '$HOME/.vim/bundle/Pydiction/complete-dict'

set encoding=utf-8

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set cursorcolumn
set cursorline

set clipboard=unnamed
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

" color theme
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
call togglebg#map("<F5>")
