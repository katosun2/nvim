:: 设置编码
chcp 65001
@echo off

set curpath=%~dp0
set nvimbin="%curpath%..\..\bin\nvim-qt.exe"

echo 正在设置 nvim 右键菜单...

:: 删除已存在的注册表项（如果存在）
echo 删除旧的注册表项（如果存在）...
reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /f >nul 2>&1

echo 设置 nvim 右键
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "" /t REG_SZ /d "用 Neovim 编辑(&N)" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "Icon" /t REG_SZ /d "%nvimbin%,0" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim\command" /v "" /t REG_SZ /d "%nvimbin%  \"%%1\"" /f
echo nvim 右键设置完成 
echo 如果设置失败，请使用管理员权限运行！
pause
@echo on
