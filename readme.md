## 安装目录

```
/nvim/share/
```

## 添加nvim到右键
使用管理员权限运行，==添加nvim到右键.bat== 即可

## 环境配置
```
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export path+=D:\flutter\bin\cache\dart-sdk\bin
export path+=D:\flutter\bin

// 按需修改
export XDG_CONFIG_HOME=D:\Neovim\share\config
export XDG_DATA_HOME=D:\Neovim\share\config
export path+=D:\Neovim\share\config\third_party\bin
```

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
