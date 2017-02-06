syntax on

" Vundle configuration
set nocompatible
filetype off

" Syntastic configuration
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['jslint']

" Python colon syntax fix
set iskeyword-=:

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'https://github.com/ervandew/supertab.git' 
Plugin 'pangloss/vim-javascript'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/hynek/vim-python-pep8-indent.git'
Plugin 'https://github.com/mattn/flappyvird-vim'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-commentary.git'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'rking/ag.vim'
" Plugin 'https://github.com/oscfri/vim-js-context-coloring'

"CtrlP configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]

set wildignore+=*.pyc

"Automatically set working directory
autocmd BufEnter * silent! lcd %:p:h

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

"Syntax check only when :SyntasticCheck is called
"let g:syntastic_mode_map = {'mode': 'passive'}

call vundle#end()
filetype plugin indent on

if has('gui_running')
    set background=dark
    colorscheme solarized
endif
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

" Swap current line with below line
map - ddp
" Swap current line with above line
map _ ddkP

" Linux font
set guifont=Monospace\ 12

" Windows font
" set guifont=courier_new:h12

" Show highligting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Map leader
let mapleader=" "

let g:semanticGUIColors = ["#839496", "#b58900", "#cb4b16", "#dc322f", "#d33682", "#6c71c4", "#268bd2", "#2aa198",  "#859900", "#719e07"]

