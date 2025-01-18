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
let MRU_Include_Files='\.snippets$\|\.vue$\|\.ts$\|\.tsx$\|\.less$\|\.scss$\|\.md$\|\.go$\|\.opf$\|\.js$\|\.java$\|\.jsx$\|\.ejs$\|\.css$\|\.yaml$\|\.html$\|\.htm$\|\.lua$\|\.php$\|\.ini$\|\.conf$\|\.c$\|\.cpp$\|\.cs\|\.txt$\|\.sh$\|\.bat$\|\.vim$\|\.cmd$\|\.dart$\|\.wxss$\|\.wxml$\|\.proto$\|\.py3$\|\.py$\|\.json$'
let MRU_Window_Height=10
  
  
" NERDTree
let NERDMenuMode=0
let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=2 
" set ignore filetype
let NERDTreeIgnore=['Thumbs.db','\~$','.DS_Store','\.pyc$','\.mp3','\.jpg','\.gif','\.swf','\.rar','\.zip','\.pdf','\.gz','\.bz2','\.dmg','\.doc','\.tar','\.png','\.rtf']
map <silent><leader>uu <ESC>:NERDTree<cr>
" fixed sets the working
  
  
" authorinfo
let g:vimrc_author='Ryu'   
let g:vimrc_email='ryu@imiku.com'   
let g:vimrc_homepage='https://www.imiku.com' 
map <leader>my <ESC>:AuthorInfoDetect<cr>   
imap <leader>my <ESC>:AuthorInfoDetect<cr>   


" NERD_commenter
" 取消默认的注释模式
let g:NERDCreateDefaultMappings=0
" 默认情况下，在注释分隔符后添加空格
let g:NERDSpaceDelims = 1
" 支持多行注释
let g:NERDCompactSexyComs = 1                     
" 按行对齐注释分隔符左对齐，而不是按代码缩进
let g:NERDDefaultAlign = 'left'
" 允许注释和反转空行（在注释区域时很有用） 
let g:NERDCommentEmptyLines = 1
" 取消注释时启用尾随空白的修剪
let g:NERDTrimTrailingWhitespace = 1
" 启用nerdcommenttoggle检查是否对所有选定行进行了注释
let g:NERDToggleCheckAllLines = 1
"自定义注释格式
let g:NERDCustomDelimiters={
			\ 'javascript': { 'left': '// ', 'leftAlt': '/* ', 'rightAlt': ' */' },
			\ 'css': { 'leftAlt': '/* ', 'rightAlt': ' */' },
			\ 'html': { 'left': '<!-- ', 'right': ' -->' }
			\ }
map <silent> <leader>cc <plug>NERDCommenterComment
"\cu取消当前行或选中行注释。
map <silent> <leader>cu <plug>NERDCommenterUncomment
"\c<space>当前或选中行中含有未注释的行，则都添加注释，都已注释则取消注释。
map <silent> <leader>c<space> <plug>NERDCommenterToggle
"\ci反转当前或选中行注释。
map <silent> <leader>ci <plug>NERDCommenterInvert
"\c$从光标位置（包括光标下的字符）注释到行末。
map <silent> <leader>c$ <plug>NERDCommenterToEOL
"\cA在行末添加注释并进入插入模式。
map <silent> <leader>cA <plug>NERDCommenterAppend
"\ca转换注释格式，比如//和/**/。
map <silent> <leader>ca <plug>NERDCommenterAltDelims

  
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
let g:coc_enabled = 0
nmap <leader>cd <esc>:CocDisable<cr>
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  
  
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

" codeium
let g:codeium_disable_bindings = 1
let g:codeium_enabled = v:true
imap <script><silent><nowait><expr> <leader>ai codeium#Accept()
imap <leader>an <Cmd>call codeium#CycleCompletions(1)<CR>
imap <leader>ap <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <leader>ac <Cmd>call codeium#Clear()<CR>


" getx-template.vim
let g:getx_templates_path=$PLUGGED.'/getx-template.vim/templates/'


" fish-redux-template.vim
let g:fish_redux_templates_path=$PLUGGED.'/fish-redux-template.vim/templates/'

" asyncrun
let g:asyncrun_open = 8
let g:asyncrun_encs='cp936'

" vim: set noet fdm=manual ff=dos sts=2 sw=2 ts=2 tw=78 : 
