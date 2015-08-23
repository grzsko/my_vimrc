" First lines are required by vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" list of installed plugins
Plugin 'sjl/gundo.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'davidhalter/jedi-vim'


call vundle#end()            " required
filetype plugin indent on    " required
" end of vundle lines

set t_Co=256
syntax enable
set showmode
set showcmd
set wildmenu
set ruler
runtime ftplugin/man.vim
set nowrap
set hlsearch
set showmatch
set spelllang=pl_pl
set tabstop=4
set cindent shiftwidth=4
set shiftround
set autoindent
set expandtab
set number
set textwidth=79
set colorcolumn=80
set fo+=t
colorscheme monokai
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

syntax on

noremap <silent> <F3> :Autoformat<CR>
let g:formatdef_autopep8 = "autopep8 - "
let g:formatters_python = ['autopep8']

"Added by android-vim:
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"let g:SuperTabDefaultCompletionType = 'context'

nnoremap <silent> <F5> :NERDTreeToggle<CR>
"Sometimes there is a problem with badly compiled vim, use
"let g:NERDTreeDirArrows=0

" nnoremap <F3> :NumbersToggle<CR>
" nnoremap <F4> :NumbersOnOff<CR>
 
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <F8> :GundoToggle<CR>
" Gundo display on right side (on left there is nerdtree)
let g:gundo_right = 1

" For pep8
" let g:pep8_map='<leader>8'

" Something for airline
set laststatus=2

" Ctrlp options
set wildignore+=*/venv/*
