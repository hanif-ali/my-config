" Material Theme Style
let g:material_style="oceanic"
set background=dark
set t_Co=256

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" PEP 8 Config
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix



" Different Config for html css and js
au BufNewFile,BufRead *.js, *.html, *.css
    \set tabstop=2
    \set softtabstop=2
    \set shiftwidth=2


" PLUGINS
" Correct Indentation for Python
Plugin 'vim-scripts/indentpython.vim' 
" Autocompletion Engine
Bundle 'Valloric/YouCompleteMe'
" Syntax Checking
Plugin 'vim-syntastic/syntastic'
" Flake-8 Checking
" Plugin 'nvie/vim-flake8'
" File Tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Virtual Environment
Plugin 'jmcantrell/vim-virtualenv'
" Status Bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Material Theme
Plugin 'hzchirs/vim-material'
" Markdown Previewer
Plugin 'iamcco/markdown-preview.vim'


" NERD Tree Configuration
" Ignore .pyc files (Cached Python Files)
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree




" You Complete Me Configurations
let g:ycm_autoclose_preview_window_after_completion=1 "Remove Autocomplete window after done
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> " Goto Shortcut

" Color Scheme Configuration
set termguicolors " Fix Color Issue
colorscheme vim-material

" Additional Configs
let python_highlight_all=1
syntax on
map <F5> :NERDTreeTabsToggle<Enter> " Use F5 for Nerd Tree Tabs Toggle
set nu " Numbering

" Small Tweak to use <F1> for finding information about the highlighting of
" what's under the cursor
nm <silent> <F1> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
    \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
    \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
    \ . ">"<CR>

" For Searching, enable smartcase and highlighting
set ignorecase
set smartcase
set hlsearch
