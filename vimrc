set hlsearch
set nu
set backspace=2
set modifiable
set nocompatible
set clipboard=unnamed
autocmd BufWritePost *.py call Flake8()
let g:ag_prg="/usr/local/bin/ag --vimgrep"
let g:ag_working_path_mode="r"
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'
Bundle "lepture/vim-jinja"
Bundle 'Rykka/riv.vim'

call vundle#end()

colo desert
let g:user_emmet_expandabbr_key = '<Tab>'
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.tpl set ft=jinja
syntax on

