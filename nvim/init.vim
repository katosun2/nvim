" init.vim config root path
let g:vim_conf_path = fnamemodify($MYVIMRC, ':h')
" init.vim path
let $VIMRC = g:vim_conf_path . '/init.vim'

" set cache
let $CACHE = g:vim_conf_path . '/../.cache'
let $UNDOCACHE = $CACHE . '/undodir'
let $BACKUPCACHE = $CACHE . '/backup'
let $SWPCACHE = $CACHE . '/swp'
let $VIEWCACHE = $CACHE . '/view'
let $MRU = $CACHE . '/mru'

" set brwosers
let $BROWSERS = g:vim_conf_path . '/../browsers'

" set my dict
let $MYDICT = g:vim_conf_path . '/../myDict.txt'

" vim-plug plugin installation directory
let $PLUGGED = g:vim_conf_path . '/plugged'

" others
let $FUNCS = g:vim_conf_path . '/conf/funcs.vim'
" vim-plug plus list
let $PLUGLIST = g:vim_conf_path . '/conf/plugList.vim'
" plugin setting
let $PLUGIN = g:vim_conf_path . '/conf/plugin.vim'


" third party app
let $AG = g:vim_conf_path . '/../third_party/Ag/ag.exe'
let $AJAXMIN = g:vim_conf_path . '/../third_party/AjaxMin/AjaxMin.exe'
"let $NODEMODULES = g:vim_root_path . '/bin/node_modules/.bin'
"let $JSHINT = $NODEMODULES.'/jshint.cmd'


" set leader 
let mapleader=","
let g:mapleader=","
let maplocalleader="."
let g:maplocalleader="."


" set encode
if has("multi_byte")
  " A,set encoding
  set encoding=utf-8
  set fileencodings=utf-8,cp936,cp932
  set tenc=utf-8
  set maxcombine=4
  " open asia support
  set fo+=mBM
  if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)\|\(jp\)'
    set ambiwidth=double
  endif

  if has("win32") || has("win64")
    "set fenc=chinese
    set fenc=utf-8
    set helplang=cn
  else
    set fenc=utf-8
  endif

  let &termencoding=&encoding

  " B,vim tips support
  language messages zh_CN.utf-8
  "set langmenu=zh_CN.utf-8
endif


" set cursor
set cursorline 
set cursorcolumn
set gcr=a:blinkoff0
set selection=inclusive 


" auto indent
filetype plugin indent on
sy on


" set color
color jellybeans
" fix pmenu
au VimEnter * GuiPopupmenu 0

" set doc format
set fileformats=unix,dos
set nobomb
set formatoptions=tcrqn


" set IM model
set iminsert=1


" set view
set ambiwidth=double
" size of a hard tabstop
set tabstop=2
set smarttab
set autoindent
set smartindent
set breakindent
set showbreak=>>>>
" size of an "indent"
set shiftwidth=2
set softtabstop=2
" always uses spaces instead of tab characters
set expandtab
set list  
set listchars=tab:\|-
set nu
set numberwidth=5
set title 
set titlestring=%(%F%)\ 
set titlelen=78
set fillchars+=vert:\ ,stl:\ ,stlnc:\
set whichwrap+=<,>,[,]
set iskeyword+=_,$,@,%,#,-
set t_Co=256
set re=1


" tab for cmd-line commplement
set wildmenu
set wildmode=longest:full,full
set scrolloff=5
set cmdheight=5
set showcmd
set noshowmode
set report=0


" set font
set guifont=Consolas:h17:cANSI 
set guifontwide=Consolas:h17:cGB2312  

set linebreak 
set nowrap
set backspace=indent,eol,start 


" set search
set hlsearch incsearch
set ignorecase smartcase
set showmatch
set showfulltag
set magic
set gdefault


" set mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" set status
set laststatus=2


" set optimization
set timeout
lcd C:/
nmap Q <Esc>
set hidden
set bsdir=buffer


" set warn，close ding ding ding 
set noerrorbells            
set novb            
" set t_vb=""
" 关闭各种按键叮叮声音和闪屏
set vb t_vb=
au GuiEnter * set t_vb=


" set foldmethod
set fen
set foldmethod=manual
set foldlevel=1
set foldcolumn=4
set modeline
hi Folded guibg=#282828 guifg=#CE542E"{{{
hi FoldColumn guibg=#282828 guifg=#CE542E"}}}


" set tab text mark
set guioptions-=e

" set global info
set viminfo+=!
set sessionoptions-=curdir


" set swp
set noswapfile
if exists('*mkdir') && !isdirectory($SWPCACHE)
  sil! cal mkdir($SWPCACHE, 'p')
endif
set directory=z:/.cache/swp,$SWPCACHE


" set backup
set backup
set writebackup
set history=1024
set backupcopy=auto
if exists('*mkdir') && !isdirectory($BACKUPCACHE)
  sil! cal mkdir($BACKUPCACHE, 'p')
endif
set backupdir=Z:,$BACKUPCACHE

" set undo
set undofile
set undolevels=10000
set undoreload=10000
if exists('*mkdir') && !isdirectory($UNDOCACHE)
  sil! cal mkdir($UNDOCACHE, 'p')
endif
set undodir=$UNDOCACHE


" load my dict
set dictionary=$MYDICT


" auto change working path
autocmd! BufEnter,BufNewFile,WinEnter,TabEnter * lcd %:p:h
set autochdir

" load global functions
source $FUNCS
" load plug list
source $PLUGLIST
" load plugin setting
source $PLUGIN

" load lspconfig
lua require('lsp')

" vim: set et fdm=marker ff=dos sts=2 sw=2 ts=2 tw=78 : 
