@echo off
echo ���� nvim �Ҽ�
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "" /t REG_SZ /d "�� Neovim �༭" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim" /v "Icon" /t REG_SZ /d "D:\nvim\bin\nvim-qt.exe,0" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Edit with vim\command" /v "" /t REG_SZ /d "D:\nvim\bin\nvim-qt.exe --no-ext-tabline \"%%1\"" /f
echo nvim �Ҽ�������� 
echo �������ʧ�ܣ���ʹ�ù���ԱȨ�����У�
pause
@echo on
