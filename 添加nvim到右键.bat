:: ���ñ���
chcp 65001
@echo off

set curpath=%~dp0
set nvimbin="%curpath%..\..\bin\nvim-qt.exe"

echo �������� nvim �Ҽ��˵�...

:: ɾ���Ѵ��ڵ�ע����������ڣ�
echo ɾ���ɵ�ע����������ڣ�...
reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /f >nul 2>&1

echo ���� nvim �Ҽ�
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "" /t REG_SZ /d "�� Neovim �༭(&N)" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "Icon" /t REG_SZ /d "%nvimbin%,0" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim\command" /v "" /t REG_SZ /d "%nvimbin%  \"%%1\"" /f
echo nvim �Ҽ�������� 
echo �������ʧ�ܣ���ʹ�ù���ԱȨ�����У�
pause
@echo on
