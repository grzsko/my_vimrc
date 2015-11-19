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
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
" For syntastic jumping
Plugin 'tpope/vim-unimpaired'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'davidhalter/jedi-vim'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Twinside/vim-hoogle'

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

colorscheme desert
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

syntax on

" NERDTree
"
nnoremap <silent> <F5> :NERDTreeToggle<CR>
"Sometimes there is a problem with badly compiled vim, use
"let g:NERDTreeDirArrows=0

" For unused number plugin
"
" nnoremap <F3> :NumbersToggle<CR>
" nnoremap <F4> :NumbersOnOff<CR>

" Tagbar
"
nnoremap <silent> <F9> :TagbarToggle<CR>

" Gundo
"
nnoremap <F8> :GundoToggle<CR>
" Gundo display on right side (on left there is nerdtree)
let g:gundo_right = 1

" Something for airline
"
set laststatus=2

" Ctrlp options
"
set wildignore+=*/venv/*

" Latex-box options
"
" For SyncTex and Skim (only mac)
" let g:LatexBox_latexmk_options
"            \ = "-pdflatex='pdflatex -synctex=1 \%O \%S'"

" Comment this mapping on linux
" map <silent> <Leader>ls :silent
"         \ !/Applications/Skim.app/Contents/SharedSupport/displayline
"         \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
"         \ "%:p" <CR>
"
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_quickfix = 2
let g:LatexBox_latexmk_async = 0 " on my linux vim, not server support
" ]] closes last environment
imap ]] <Plug>LatexCloseCurEnv

" Haskell-vim options
"
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1

" Syntastic options
"
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers = ['pep8', 'pylint']
" in order to automatically jumping
let g:syntastic_always_populate_loc_list = 1

" Pydocstring settings
"
set softtabstop=4
