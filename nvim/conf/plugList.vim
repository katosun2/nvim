" vim-plug 插件
call plug#begin($PLUGGED) 

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

Plug 'scrooloose/syntastic'

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/webapi-vim'
Plug 'mxw/vim-jsx'

# install and download fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" manual install npm install 
"Plug 'ternjs/tern_for_vim'
" manual install make js 
Plug 'maralla/completor.vim'

Plug 'skywind3000/asyncrun.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sirver/ultisnips'

" Plug 'github/copilot.vim'
Plug 'Exafunction/codeium.vim'

Plug 'adelarsq/vim-matchit'

" 会和 vim-copilot 冲突
Plug 'neovim/nvim-lspconfig'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
