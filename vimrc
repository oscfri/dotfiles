set clipboard=unnamed
set number
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set statusline=%f\ %m\ %y\ [%l\:%c]
set laststatus=2
set history=512
set wildmenu
set wildmode=longest:full
set guioptions=
set scrolloff=10

" Linux font
set guifont=Monospace\ 14

" Windows font
"set guifont=courier_new:h14

" Show highligting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Go plugins
set rtp+=$GOROOT/misc/vim/
filetype plugin indent on
syntax on

" Mark 80th column
set textwidth=80
set colorcolumn=+0

" Map leader
let mapleader=" "

" Vundle configuration
set nocompatible
filetype off

" Syntastic configuration
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['jslint']

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'https://github.com/ervandew/supertab.git' 
Bundle 'https://github.com/scrooloose/syntastic'
Bundle 'https://github.com/oscfri/vim-js-context-coloring'

set background=dark
colorscheme solarized

"1: white, 2: green, 3: yellow, 4: blue, 5: red, 6: cyan, 7: grey
let g:js_context_colors = [
            \'#839996',
            \'#719e07',
            \'#bf8900',
            \'#268bd2',
            \'#cb4b15',
            \'#2aa198',
            \'#6c71c4']
let g:js_context_colors_debug = 1

filetype plugin indent on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
