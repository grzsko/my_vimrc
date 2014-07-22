" Pathogen
" filetype off " Pathogen needs to run before plugin indent on
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags() " generate helptags for everything in 'runtimepath'
" filetype plugin indent on
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
set textwidth=80
set fo+=t
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

nnoremap <silent> <F9> :TagbarToggle<CR>
"Added by android-vim:
set tags+=/home/gskoraczynski/.vim/tags
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"let g:SuperTabDefaultCompletionType = 'context'

nnoremap <silent> <F8> :NERDTree<CR>
"Sometimes there is a problem with badly compiled vim, use
"let g:NERDTreeDirArrows=0

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

nnoremap <F5> :GundoToggle<CR>

