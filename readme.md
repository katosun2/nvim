## 安装目录

## 版本

- neovim: 0.11.3
- neovim-qt: [0.2.19](https://github.com/equalsraf/neovim-qt)
- gui: https://neovim.io/doc/user/gui.html
- node: 20.18.3
- clang: C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\Llvm\x64\bin
- python: 3.11+
- pynvim: 0.5.2+

npm install tree-sitter@0.25.0 tree-sitter-cli@0.25.8 -g

pip install pynvim
```
cd /nvim/share/
git clone git@github.com:katosun2/nvim.git config
```

## 添加nvim到右键
使用管理员权限运行 **添加nvim到右键.bat** 即可

## 环境配置
// 配置neovim调用的config
export XDG_CONFIG_HOME=D:\nvim-win64\share\config
export XDG_DATA_HOME=D:\nvim-win64\share\config
export path+=D:\nvim-win64\share\config\third_party\bin

export path+=D:\nvim-win64\bin
```

``vi nvim/init.vim`` 按需修改配置否则无法运行 checkhealth

```
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
```

## flutter 环境配置
```
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

// 按需修改
export path+=D:\flutter\bin\cache\dart-sdk\bin
export path+=D:\flutter\bin

## node 安装

下载 https://mirrors.aliyun.com/nodejs-release/

## python3 安装
```
let g:python3_host_prog = 'D:\Python\Python310\python.exe'
python.exe -m ensurepip --upgrade
python.exe -m pip install pynvim
```

## 安装语法解析
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

```
// vuels
npm install -g vls
// tsserver
npm install -g typescript typescript-language-server
// html, cssls, json
npm install -g vscode-langservers-extracted
// cssmodules
npm install -g cssmodules-language-server
// yamlls
npm install -g yaml-language-server
// dockerls
npm install -g dockerfile-language-server-nodejs
// vimls
npm install -g vim-language-server
```

## [win]临时解决dartfmt命令
从 2.15 开始 dartfmt 被 dart format替代, 建立一个dartfmt.cmd来替代,
```
@echo off
dart format %*
```
放在和dart.exe同级目录下面

## git 代理
```
git config --global http.proxy 127.0.0.1:1080
```
