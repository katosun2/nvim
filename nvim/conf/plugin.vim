"=============================================================================
"     FileName: plugin.vim
"         Desc: 插件配置  
"   LastChange: 2022-03-28 15:18:30
"=============================================================================
" open browsers's lnk path
if exists('*mkdir') && !isdirectory($BROWSERS)
	sil! cal mkdir($BROWSERS, 'p')
endif
let $BROWSERS = $BROWSERS

  
" Load Template
let g:template_path=$PLUGGED.'/imiku/template/'
map <F8> <ESC>:LoadTemplate<cr>

  
" modeliner
let g:Modeliner_format='et fdm= ff= sts= sw= ts= tw='
map <silent><leader>sm <esc><s-g>o<esc>:Modeliner<cr>


" MRU
if exists('*mkdir') && !isdirectory($MRU)
	sil! cal mkdir($MRU, 'p')
endif
let MRU_File=$MRU . '/_vim_mru_files'
let MRU_Max_Entries=20
let MRU_Include_Files='\.snippets$\|\.vue$\|\.ts$\|\.less$\|\.scss$\|\.md$\|\.go$\|\.opf$\|\.js$\|\.java$\|\.jsx$\|\.ejs$\|\.css$\|\.yaml$\|\.html$\|\.htm$\|\.lua$\|\.php$\|\.ini$\|\.conf$\|\.c$\|\.cpp$\|\.cs\|\.txt$\|\.sh$\|\.bat$\|\.vim$\|\.cmd$\|\.dart$\|\.wxss$\|\.wxml$\|\.proto$\|\.json$'
let MRU_Window_Height=10
  
  
" NERDTree
let NERDMenuMode=0
let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=2 
" set ignore filetype
let NERDTreeIgnore=['Thumbs.db','\~$','.DS_Store','\.pyc$','\.mp3','\.jpg','\.gif','\.swf','\.rar','\.zip','\.pdf','\.gz','\.bz2','\.dmg','\.doc','\.tar','\.png','\.rtf']
map <silent><leader>uu <ESC>:NERDTree<cr>
" fixed sets the working
  
  
" NERD_commenter && authorinfo
let g:vimrc_author='Ryu'   
let g:vimrc_email='ryu@imiku.com'   
let g:vimrc_homepage='http://www.imiku.com' 
map <leader>my <ESC>:AuthorInfoDetect<cr>   
imap <leader>my <ESC>:AuthorInfoDetect<cr>   

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters={
			\ 'javascript': { 'left': '// ', 'leftAlt': '/* ', 'rightAlt': ' */' },
			\ 'javascript.jquery': { 'left': '// ', 'leftAlt': '/* ', 'rightAlt': ' */' },
			\ 'scss': { 'left': '// ', 'leftAlt': '/* ', 'rightAlt': ' */' },
			\ 'less': { 'left': '/* ', 'right': ' */' },
			\ 'htmldjango': { 'left': '<!-- ', 'right': ' -->', 'leftAlt': '{# ', 'rightAlt': ' #}' },
			\ 'php': { 'left': '// ', 'leftAlt': '/* ', 'rightAlt': ' */' }
			\ }
  
  
" fencview
let g:fencview_autodetect=0
map <silent><F3> <ESC>:FencView<cr>
  
  
" Ultisnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsUsePythonVersion=2
let g:UltiSnipsSnippetsDir=$VIMFILES."/bundle/imiku/UltiSnips"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
let g:snips_author_email="neko@imiku.com"
let g:snips_author="katosun2"

function! g:UltiSnips_Complete()
	call UltiSnips#ExpandSnippet()
	if g:ulti_expand_res == 0
		if pumvisible()
			return "\<C-n>"
		else
			call UltiSnips#JumpForwards()
			if g:ulti_jump_forwards_res == 0
				return "\<TAB>"
			endif
		endif
	endif
	return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  
  
" YouCompleteMe
" 在接受补全后不分裂出一个窗口显示接受的项
" set completeopt-=preview
"set completeopt=longest,menu
" 寻找全局配置文件
"  let g:ycm_global_ycm_extra_conf=$vim_conf_path.'/.ycm_extra_conf.py'
"  " 输入第4个字符就开始补全
"  let g:ycm_min_num_of_chars_for_completion=4
"  " 关闭加载.ycm_extra_conf.py提示
"  let g:ycm_confirm_extra_conf=0
"  " 语法关键字补全
"  let g:ycm_seed_identifiers_with_syntax=1
"  " 开启 YCM 基于标签引擎
"  let g:ycm_collect_identifiers_from_tags_files=0
"  " 每次重新生成匹配项，禁止缓存匹配项
"  let g:ycm_cache_omnifunc=0
"  " 错误标识符
"  let g:ycm_error_symbol='>>'
"  " 警告标识符
"  let g:ycm_warning_symbol='>*'
"  " 注释补全
"  let g:ycm_complete_in_comments=1
"  " 查询ultisnips提供的代码模板补全
"  let g:ycm_use_ultisnips_completer=1
"  "在字符串输入中也能补全
"  let g:ycm_complete_in_strings=1
"  "注释和字符串中的文字也会被收入补全
"  let g:ycm_collect_identifiers_from_comments_and_strings=0
"  " 主动调用补全
"  let g:ycm_key_invoke_completion='<C-c>'
"  " 自定义调用语法解析服务
"  let g:ycm_language_server=[
"  			\   {
"  				\     'name': 'vue',
"  				\     'filetypes': [ 'vue', 'ts', 'typescript' ],
"  				\     'cmdline': [ expand($PLUGGED.'\vetur\server\bin\vls')]
"  				\   }
"  				\ ]
"  " 跳转到定义处
"  nnoremap <leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR>
  

" doxygenToolkit for vim
let g:DoxygenToolkit_briefTag_pre="@method "
let g:DoxygenToolkit_paramTag_pre="@param { }"
let g:DoxygenToolkit_returnTag="@return { } "
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygenToolkit_authorName="Ryu"
let g:doxygenToolkit_briefTag_funcName="no"
map <silent><leader>jd <esc>:Dox<cr>
inoremap <silent><leader>jd <esc>:Dox<cr>
  

" calendar
map <F9> :Calendar<cr>
  
  
" fzf.vim
nmap <C-P> :Files<CR>

" coc-nvim
let g:coc_global_extensions = ['coc-json', 'coc-html', 'coc-tsserver', 'coc-css', 'coc-flutter', 'coc-flutter-tools']
nmap <leader>cd <esc>:CocDisable<cr>
  
  
" syntastic
let g:syntastic_check_on_open=0
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons=0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=2
let g:syntastic_loc_list_height=5
nmap <leader>st <esc>:SyntasticToggleMode<cr>
nmap <leader>lo <esc>:lopen<cr>
nmap <leader>lc <esc>:lclose<cr>
map <silent><leader>jj <esc>:SyntasticCheck<cr>
inoremap <silent><leader>jj <esc>:SyntasticCheck<cr>

let g:syntastic_mode_map={ 
			\ 'mode': 'passive',
			\ 'active_filetypes': [],
			\ 'passive_filetypes': []
			\ }

" add jshint checkers
"if !executable('jshint')
"let g:syntastic_javascript_jshint_exec=$JSHINT
"else
"let g:syntastic_javascript_jshint_exec='jshint'
"endif
"let g:syntastic_javascript_checkers=['jshint']
"let g:syntastic_javascript_jshint_args='--config "' . $VIM . '/.jshintrc"'

" add eslint checkers
if !executable('eslint')
	let g:syntastic_javascript_eslint_exec=$JSHINT
else
	let g:syntastic_javascript_eslint_exec='eslint'
endif
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_args='--no-eslintrc --config "' . $VIM . '/.eslintrc"'
  
  
" vim-jsx
let g:jsx_ext_required=0
  
" AjaxMin comparess css/js 
if executable($AJAXMIN)
	let g:ajaxmin_cmd=$AJAXMIN
endif

let g:ajaxmin_cmd_jsopt='-clobber:true -term'
let g:ajaxmin_cmd_cssopt='-clobber:true -term -comments:hacks'
  

" vim-gitgutter
set updatetime=100
let g:gitgutter_sign_modified = '|'


" vim-fugitive
nnoremap <Leader>gb :<C-u>:Git blame -L 1,10<CR>
nnoremap <Leader>gd :<C-u>:Git diff<CR>
nnoremap <Leader>gm :<C-u>:Git mergetool<CR>

  
" vim-lsc
" Apply the defaults with a few overrides:
let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '<leader>r'}
let g:lsc_enable_autocomplete = v:false
let g:lsc_reference_highlights = v:false
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:dart_style_guide = 2
let g:dartfmt_options = ['--fix', '-l 180']
"auto dart dart format
"autocmd BufWritePre *.dart* DartFmt
"show all errors
map <leader>lsc <ESC>:LSClientAllDiagnostics<cr>


" dart-vim-plugin
let g:dart_style_guide = 2

" flutter-tools
" Show hover
nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>
" Jump to definition
nnoremap <leader>gd <Cmd>lua vim.lsp.buf.definition()<CR>
" Open code actions using the default lsp UI, if you want to change this please see the plugins above
nnoremap <leader>ca <Cmd>lua vim.lsp.buf.code_action()<CR>
" Open code actions for the selected visual range
xnoremap <leader>ca <Cmd>lua vim.lsp.buf.range_code_action()<CR>


" getx-template.vim
let g:getx_templates_path=$PLUGGED.'/getx-template.vim/templates/'


" fish-redux-template.vim
let g:fish_redux_templates_path=$PLUGGED.'/fish-redux-template.vim/templates/'

" asyncrun
let g:asyncrun_open = 8
let g:asyncrun_encs='cp936'

" vim: set noet fdm=manual ff=dos sts=2 sw=2 ts=2 tw=78 : 
