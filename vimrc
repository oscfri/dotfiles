" Vundle configuration
set nocompatible
filetype off

" Syntastic configuration
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['jslint']

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'https://github.com/ervandew/supertab.git' 
Bundle 'pangloss/vim-javascript'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/hynek/vim-python-pep8-indent.git'
" Plugin 'https://github.com/oscfri/vim-js-context-coloring'

"Automatically set working directory
autocmd BufEnter * silent! lcd %:p:h

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

let g:syntastic_mode_map = {'mode': 'passive'}

call vundle#end()
filetype plugin indent on
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

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
set colorcolumn=80
set mousehide

" Linux font
set guifont=Monospace\ 14

" Windows font
" set guifont=courier_new:h14

" Show highligting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Go plugins
filetype plugin indent on
syntax on

" Map leader
let mapleader=" "

