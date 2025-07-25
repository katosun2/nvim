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
" manual install make js 
" Plug 'maralla/completor.vim'
Plug 'katosun2/completor.vim'

Plug 'skywind3000/asyncrun.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'vim-scripts/DoxygenToolkit.vim'
" Plug 'scrooloose/nerdtree'
Plug 'katosun2/nerdtree'
" Plug 'scrooloose/nerdcommenter'
Plug 'katosun2/nerdcommenter'
" Plug 'sirver/ultisnips'
Plug 'katosun2/ultisnips'

" Plug 'github/copilot.vim'


" Plug 'nomnivore/ollama.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'

Plug 'nvim-treesitter/nvim-treesitter'

" Plug 'olimorris/codecompanion.nvim'
Plug 'David-Kunz/gen.nvim'

Plug 'adelarsq/vim-matchit'

" 会和 vim-copilot 冲突
" Plug 'neovim/nvim-lspconfig'
Plug 'katosun2/nvim-lspconfig', {'branch': 'master', 'commit': '339ccc81e08793c3af9b83882a6ebd90c9cc0d3b'}

" Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'katosun2/coc.nvim', {'branch': 'release', 'commit': '4cc169449fa6fd69e5f5f0a67bda8fd74837f924'}

" focus.vim
Plug 'nvim-focus/focus.nvim'

" if codeium not work, delete ~/.codeium
" Plug 'Exafunction/windsurf.vim'
Plug 'katosun2/codeium.vim'
" Plug 'katosun2/codeium.vim', {'branch': 'feature/ollama'}
call plug#end()
