" Grze_Sko actual configuration of vim.
" Mainly containts a list of plugins and configs required by plugins. Plugins
" are managed by Vundle, usually updating of this file requires typing
" :PluginClean and :PluginInstall. Some plugins require additional
" configuration, usually described in plugins' list.

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
Plugin 'tomasr/molokai'
Plugin 'sickill/vim-monokai'
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
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Plugin 'lervag/vimtex'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'Twinside/vim-hoogle'
" Two ones below require ghc-mod (cabal install ghc-mod)
Plugin 'eagletmt/neco-ghc'
" TODO install Shougo/neocomplete, but earlier add +Lua option to vim
Plugin 'eagletmt/ghcmod-vim'
" Dependency of ghcmod-vim, requires to run make
Plugin 'Shougo/vimproc.vim'
" Two ones below require hdevtools (cabal install hdevtools)
Plugin 'dan-t/vim-hsimport'
Plugin 'bitc/vim-hdevtools'
" Requires installing fast-tags (cabal install fast-tags)
" also it does not work properly
" Plugin 'elaforge/fast-tags'
Plugin 'itchyny/vim-haskell-indent'
Plugin 'neapel/vim-bnfc-syntax'
" It has problems with opening larger files
" Plugin 'chrisbra/csv.vim'
" Requires cowsay and fortune
Plugin 'mhinz/vim-startify'
Plugin 'mattboehm/vim-unstack'
Plugin 'renyard/vim-git-flow-format'
Plugin 'craigemery/vim-autotag'
Plugin 'vim-scripts/sudo.vim'
Plugin 'mattboehm/vim-accordion'
Plugin 'justincampbell/vim-eighties'
" Plugin 'gabrielelana/vim-markdown'
" Below requires npm, for linux: xdg-utils, curl, for Debian
" like:nodejs-legacy
" then: [sudo] npm -g install instant-markdown-d
Plugin 'suan/vim-instant-markdown'
" Plugin 'ntpeters/vim-better-whitespace'
Plugin 'bronson/vim-trailing-whitespace'
" For R
" Plugin 'ervandew/screen'
Plugin 'vim-scripts/promela.vim'
" Below just highlights tags.
Plugin 'Valloric/MatchTagAlways'
" Matches tags like parentheses in XML, HTML and enables jumping.
Plugin 'tmhedberg/matchit'
Plugin 'tell-k/vim-autopep8'
Plugin 'tpope/vim-surround'
Plugin 'spf13/vim-autoclose'
"TODO find better plugin which works nicely with curly brackets

" You need to manually install plugin Vim-R-plugin, everything is in docs
" Below requires compilation
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --clang-completer
" Plugin 'Valloric/YouCompleteMe'
" May require python interpreter in ~/.vim/bundle/YCM-Generator/config_gen.py
" Plugin 'rdnetto/YCM-Generator'

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
set tabstop=4
set cindent shiftwidth=4
set shiftround
set autoindent
set expandtab
set number
set textwidth=79
set colorcolumn=80
set fo+=t
" For spell checking
set spelllang=en_gb,pl
set spell
set tags+=tags;$HOME
set backspace=indent,eol,start " Usable in some linuxes (not default)
set splitright

autocmd BufEnter * colorscheme molokai
autocmd BufEnter *.py colorscheme monokai
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

syntax on

" Tabs easy navigation
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap td  :tabclose<CR>

" NERDTree
"
nnoremap <silent> <F5> :NERDTreeToggle<CR>
"Sometimes there is a problem with badly compiled vim, use
"let g:NERDTreeDirArrows=0

" Tagbar
"
nnoremap <silent> <F9> :TagbarToggle<CR>

" Gundo
"
nnoremap <F10> :GundoToggle<CR>
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
let maplocalleader = "\\"
let g:LatexBox_latexmk_preview_continuously = 0
let g:LatexBox_quickfix = 2
let g:LatexBox_latexmk_async = 0 " on my linux vim, not server support
" ]] closes last environment
imap ]] <Plug>LatexCloseCurEnv
imap <buffer> [[     \begin{


" Vimtex options
" let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
" let g:vimtex_view_general_options_latexmk = '-r'
" let g:vimtex_fold_enabled = 0 "So large files can open more easily

" Syntastic options
"
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers = ['flake8', 'pep257']
" in order to automatically jumping
let g:syntastic_always_populate_loc_list = 1
" for R
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = 1

" Haskell-vim options
"
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1

" neco-ghc options
"
let g:necoghc_enable_detailed_browse = 1
" Disable haskell-vim omnifunc and set neco
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Pydocstring settings
"
set softtabstop=4
nmap <silent> <C-m> <Plug>(pydocstring)

" Startify settings
let g:startify_custom_header =
      \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
" startify complains about viminfo
" Only on Linux, mac complains terribly!
set viminfo='100,n$HOME/.vim/files/info/viminfo

" options for haskell auto tag file generating
" Add these to your vimrc to automatically keep the tags file up to date.
" Unfortunately silent means the errors look a little ugly, I suppose I could
" capture those and print them out with echohl WarningMsg.
" Requires fast-tags (cabal install fast-tags)
au BufWritePost *.hs            silent !init-tags %
au BufWritePost *.hsc           silent !init-tags %

" vim-hdevtools options - changable over projects
" au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
" au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
" TODO changable over projects, move to session.vim
let g:syntastic_haskell_hdevtools_args = '-g-ibnfc -g-Wall -g--make -g-v'

" Not used now
" For ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Better whitespace
highlight ExtraWhitespace ctermbg=red

" <Ctrl-l> redraws the screen and removes any search highlighting.
" Another way working on linux.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" For Autopep8
autocmd FileType python map <buffer> <F3> :call Autopep8()<CR>
