## 目录

```
/nvim/share/
```

## 添加nvim到右键

编辑 ``添加nvim到右键.reg`` 修改对应的路径 安装即可

## dart-sdk 历史版本
[dart-sdk](https://dart.dev/get-dart/archive)

## 安装语法解析

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

```
// vuels
npm install -g vls

// tsserver
npm install -g typescript typescript-language-server

// html, cssls
npm install -g vscode-langservers-extracted

// yamlls
npm install -g yaml-language-server
```

## [win]临时解决dartfmt命令
从 2.15 开始 dartfmt 被 dart format替代, 建立一个dartfmt.cmd来替代,
```
@echo off
dart format %*
```
放在和dart.exe同级目录下面
