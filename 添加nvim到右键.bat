@echo off

set curpath=%~dp0
set nvimbin="%curpath%..\..\bin\nvim-qt.exe"

echo 设置 nvim 右键
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "" /t REG_SZ /d "用 Neovim 编辑(&N)" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "Icon" /t REG_SZ /d "%nvimbin%,0" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim\command" /v "" /t REG_SZ /d "%nvimbin%  \"%%1\"" /f
echo nvim 右键设置完成 
echo 如果设置失败，请使用管理员权限运行！
pause
@echo on
