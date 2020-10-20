" GrzSko actual configuration of vim.
" Mainly containts a list of plugins and configs required by plugins. Plugins
" are managed by Vundle, usually updating of this file requires typing
" :PluginClean and :PluginInstall. Some plugins require additional
" configuration, usually described in plugins' list.
"
" Recently updated: 09.10.2020

" First lines are required by vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" If later written, there is problem with loading plugins when using fish
" shell.
set shell=bash "\ -i

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" list of installed colorschemes
Plugin 'morhetz/gruvbox'
" list of installed plugins
Plugin 'sjl/gundo.vim'
Plugin 'kien/ctrlp.vim'
" TODO learn better mappings
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'preservim/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" TODO think if replaceable below (ale?)
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'neapel/vim-bnfc-syntax'
" Requires cowsay and fortune
Plugin 'mhinz/vim-startify'
" Below interesting but rather unuseful
" Plugin 'mattboehm/vim-unstack'
" Plugin 'craigemery/vim-autotag'
Plugin 'vim-scripts/sudo.vim'
Plugin 'mattboehm/vim-accordion'
Plugin 'justincampbell/vim-eighties'
" Plugin 'gabrielelana/vim-markdown'
" Below requires npm, for linux: xdg-utils, curl, for Debian
" like:nodejs-legacy
" then: [sudo] npm -g install instant-markdown-d
Plugin 'suan/vim-instant-markdown'
Plugin 'bronson/vim-trailing-whitespace'
" Below just highlights tags.
Plugin 'Valloric/MatchTagAlways'
" Matches tags like parentheses in XML, HTML and enables jumping.
Plugin 'tmhedberg/matchit'
" Below usable but needs to be learnt"
Plugin 'tpope/vim-surround'
" Plugin 'spf13/vim-autoclose'
" Let's give a try to one below
Plugin 'jiangmiao/auto-pairs'
" First, configure cscope
" Plugin 'chazy/cscope_maps'
" Plugin 'artur-shaik/vim-javacomplete2'
" Below usable when working with SVN
Plugin 'juneedahamed/vc.vim'
Plugin 'AndrewRadev/undoquit.vim'
" Mandatory plugin!
Plugin 'vim-scripts/TeTrIs.vim'
" For C/C++
" Try to replace with ycm
" Plugin 'Rip-Rip/clang_complete'
Plugin 'vim-scripts/a.vim'
" Rather difficult in usage
" Plugin 'vim-scripts/c.vim'
" Warning! Requires additional configuration (below).
" TODO configure for python
Plugin 'ycm-core/YouCompleteMe'
" For Python3
" TODO replace below with smth more functional and documented
Plugin 'vim-scripts/python.vim'
" TODO configure airline with virtualenv
Plugin 'jmcantrell/vim-virtualenv'
" TODO below, maybe replace with kite plugin (or at least YCM)
" Plugin 'davidhalter/jedi-vim'
Plugin 'pixelneo/vim-python-docstring'
Plugin 'Vimjas/vim-python-pep8-indent'

call vundle#end()            " required
filetype plugin indent on    " required
" end of vundle lines


"" Configuration for YCM (YouCompleteMe) for C++ (brought from
" https://xuechendi.github.io/2019/11/11/VIM-CPP-IDE-2019-111-11-VIM_CPP_IDE)
"
" cd ~/.vim/bundle/YouCompleteMe
" python3 install.py --clangd-completer
" cd ~
" mkdir ycm_build
" cd ycm_build
" cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
" cmake --build . --target ycm_core --config Release
" pip install compiledb # for projects automagical config
" # # Then per every project
" cd ${CPP project}
" compiledb -n make
" # now you should see a file called "compile_commands.json" in your root dir.



set t_Co=256
" Below probably same two lines, :-D
syntax on
syntax enable
set showmode
set showcmd
set wildmenu
set ruler
runtime ftplugin/man.vim
set nowrap
set hlsearch
set showmatch
set tabstop=4
set cindent shiftwidth=4
set shiftround
set autoindent
set expandtab
set number
set textwidth=79
set colorcolumn=80
set fo+=t
"set tags+=tags;$HOME
set backspace=indent,eol,start " Usable in some linuxes (not default)
set splitright
set encoding=utf-8
set fileencoding=utf-8
" For spell checking
set spelllang=en_gb,pl
set spell


set background=dark    " Setting dark mode
" Maybe hard is too hard
" let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox


" Choose airline theme
"
let g:airline_theme='base16'

" Trying plugin for now"
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
" inoremap {}     {}


" Tabs easy navigation
"
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap td  :tabclose<CR>

" No more ex mode!
map Q <Nop>

" NERDTree
"
nnoremap <silent> <F4> :NERDTreeToggle<CR>
"Sometimes there is a problem with badly compiled vim, use
"let g:NERDTreeDirArrows=0

" Tagbar
"
nnoremap <silent> <F11> :TagbarToggle<CR>

" Gundo
"
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
nnoremap <F12> :GundoToggle<CR>
" Gundo display on right side (on left there is nerdtree)
let g:gundo_right = 1


" Ctrlp options
"
set wildignore+=*/venv/*

" Latex-box options
"
" For SyncTex and Skim (only mac)
" Setup works fine only in macvim (GUI)
" let g:LatexBox_latexmk_options
"            \ = "-pdflatex='pdflatex -synctex=1 \%O \%S'"

" Comment this mapping on linux
" map <silent> <Leader>ls :silent
"         \ !/Applications/Skim.app/Contents/SharedSupport/displayline
"         \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
"         \ "%:p" <CR>
"
" Remember that backward search (jump) Cmd-Shift-click works when leader-ls
" compiled
let maplocalleader = "\\"
let g:LatexBox_latexmk_preview_continuously = 0
let g:LatexBox_quickfix = 2
let g:LatexBox_latexmk_async = 0 " on my linux vim, not server support
" ]] closes last environment
imap ]] <Plug>LatexCloseCurEnv
imap <buffer> [[     \begin{
" needed for omni completion
let g:tex_flavor='latex'

" Syntastic options
"
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers = ['flake8', 'pydocstyle']
let g:syntastic_c_checkers = ['gcc', 'splint']
" in order to automatically jumping
let g:syntastic_always_populate_loc_list = 1

" Pydocstring settings
"
let g:python_style = 'numpy'

" Startify settings
"
let g:startify_custom_header =
      \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
" startify complains about viminfo
" Only on Linux, mac complains terribly!
" set viminfo='100,n$HOME/.vim/files/info/viminfo
" Above is legacy, now works fine on default ~/.vimrc

" <Ctrl-l> redraws the screen and removes any search highlighting.
" Another way working on linux.
"
nnoremap <silent> <C-l> :nohl<CR><C-l>

" For clang-complete
" Option only on Mac, on Linux change path
" let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

" From wikia for grep
"
:nnoremap gr :grep <cword> *<CR>
:nnoremap Gr :grep <cword> %:p:h/*<CR>
:nnoremap gR :grep '\b<cword>\b' *<CR>
:nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>

" YCM (YouCompleteMe) options
"
" close this terrible window automatically
let g:ycm_autoclose_preview_window_after_completion=1
" Jump almost like with tags
map <leader>] :YcmCompleter GoToDefinitionElseDeclaration<CR>
