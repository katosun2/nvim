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

" https://neovim.io/doc/user/provider.html
let g:ruby_host_prog = ''
let g:loaded_ruby_provider = 0

let g:perl_host_prog = ''
let g:loaded_perl_provider = 0

let g:python_host_prog = 'Python2'
let g:loaded_python_provider = 0

let g:python3_host_prog = 'D:\Python\Python310\python.exe'
" let g:loaded_python3_provider = 0

let g:node_host_prog = 'D:\work\nodejs\18.x\node_modules\neovim\bin\cli.js'
let g:coc_node_path = 'D:\work\nodejs\18.x\node.exe'
" let g:loaded_node_provider = 0


" third party app
let $AJAXMIN = g:vim_conf_path . '/../third_party/AjaxMin/AjaxMin.exe'

" set leader 
let mapleader=","
let g:mapleader=","
let maplocalleader="."
let g:maplocalleader="."


" set encode
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
set tenc=utf-8
set maxcombine=4
set helplang=cn
set fo+=mBM
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)\|\(jp\)'
  set ambiwidth=double
endif
language messages zh_CN.UTF-8
set langmenu=zh_CN.UTF-8


" set cursor
set cursorline 
set cursorcolumn
set gcr=a:blinkoff0
set selection=inclusive 


" auto indent
filetype plugin indent on
sy on


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
"set guifont=Consolas:h17:cANSI
au vimEnter * Guifont Consolas:h17:cANSI

" set color
color jellybeans
" fix pmenu color
au VimEnter * GuiPopupmenu 0


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
"autocmd! BufEnter,BufNewFile,WinEnter,TabEnter * lcd %:p:h
set autochdir

" load plug list
source $PLUGLIST
" load global functions
source $FUNCS
" load plugin setting
source $PLUGIN

" load lspconfig
" lua/lsp/目录名称
" require('文件夹1.文件夹2.文件名(默认init.lua)')
lua require('lsp.init')

" check :lua= vim.lsp
" check :lua= vim.lsp.log_levels
lua require('vim.lsp').set_log_level(4)

" vim: set et fdm=marker ff=dos sts=2 sw=2 ts=2 tw=78 : 
