" vim-plug 插件
call plug#begin($PLUGGED) 
" let g:plug_url_format = 'git@github.com:%s.git'

Plug 'junegunn/vim-easy-align'

Plug 'chemzqm/wxapp.vim'

Plug 'katosun2/imiku-vim'
Plug 'katosun2/vim-browsers'
Plug 'katosun2/load_template'

Plug 'posva/vim-vue'

Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'
Plug 'thosakwe/vim-flutter'
Plug 'nvim-lua/plenary.nvim'

Plug 'ap/vim-css-color'

Plug 'katosun2/fish-redux-template.vim'
Plug 'katosun2/getx-template.vim'

Plug 'yegappan/mru'
Plug 'mbbill/fencview'
Plug 'vim-scripts/Modeliner'
Plug 'tpope/vim-surround'
Plug 'ynkdir/vim-iconv'

" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/vimshell.vim'

" Plug 'scrooloose/syntastic'
Plug 'katosun2/syntastic'

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/webapi-vim'
Plug 'mxw/vim-jsx'

" install and download fzf
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() }, 'branch': 'master', 'commit': 'ed8ceec66f2a3fd380acfb1e181b260cd21b8c5f' }
" Plug 'junegunn/fzf.vim', { 'branch': 'master', 'commit': '556f45e79ae5e3970054fee4c4373472604a1b4e' }
Plug 'katosun2/fzf', { 'do': { -> fzf#install() }, 'branch': 'master', 'commit': 'ed8ceec66f2a3fd380acfb1e181b260cd21b8c5f' }
Plug 'katosun2/fzf.vim', { 'branch': 'master', 'commit': '556f45e79ae5e3970054fee4c4373472604a1b4e' }

" manual install npm install 
"Plug 'ternjs/tern_for_vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'preservim/nerdtree', {'branch': 'master', 'commit': '9b465acb2745beb988eff3c1e4aa75f349738230'}

" Plug 'sirver/ultisnips', {'branch': 'master', 'commit': 'b22a86f9dcc5257624bff3c72d8b902eac468aad'}
Plug 'katosun2/ultisnips', {'branch': 'master', 'commit': 'b22a86f9dcc5257624bff3c72d8b902eac468aad'}

" Plug 'github/copilot.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'master', 'do': ':TSUpdate', 'commit': '42fc28ba918343ebfd5565147a42a26580579482'}
Plug 'numToStr/Comment.nvim', {'branch': 'master', 'commit': 'e30b7f2008e52442154b66f7c519bfd2f1e32acb'}
" Plug 'JoosepAlviste/nvim-ts-context-commentstring', {'branch': 'main', 'commit': '1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f'}
Plug 'katosun2/nvim-ts-context-commentstring', {'branch': 'main', 'commit': '1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f'}

" Plug 'olimorris/codecompanion.nvim'
Plug 'David-Kunz/gen.nvim'

" 会和 vim-copilot 冲突
" Plug 'neovim/nvim-lspconfig', {'branch': 'master', 'commit': '4d3b3bb8815fbe37bcaf3dbdb12a22382bc11ebe'}
Plug 'katosun2/nvim-lspconfig', {'branch': 'master', 'commit': '4d3b3bb8815fbe37bcaf3dbdb12a22382bc11ebe'}

" Use release branch (recommend)
" Manual install npm install 
" Plug 'neoclide/coc.nvim', {'branch': 'release', 'commit': '29774cf47307a39a0d5c667068c377cef2253eea'}
Plug 'katosun2/coc.nvim', {'branch': 'release', 'commit': '29774cf47307a39a0d5c667068c377cef2253eea'}

" focus.vim
Plug 'nvim-focus/focus.nvim'

" if codeium not work, delete ~/.codeium
" Plug 'Exafunction/windsurf.vim'
Plug 'katosun2/codeium.vim'

call plug#end()
