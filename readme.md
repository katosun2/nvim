## 安装目录

```
/nvim/share/
```

## 添加nvim到右键
使用管理员权限运行 **添加nvim到右键.bat** 即可

## 环境配置
```
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

// 按需修改
export path+=D:\flutter\bin\cache\dart-sdk\bin
export path+=D:\flutter\bin

// 配置neovim调用的config
export XDG_CONFIG_HOME=D:\Neovim\share\config
export XDG_DATA_HOME=D:\Neovim\share\config
export path+=D:\Neovim\share\config\third_party\bin

export path+=D:\Neovim\bin
```

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
