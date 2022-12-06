@echo off&(cd/d "%~dp0")&(cacls "%SystemDrive%\System Volume Information" >nul 2>&1)||(start "" mshta vbscript:CreateObject^("Shell.Application"^).ShellExecute^("%~snx0"," %*","","runas",1^)^(window.close^)&exit /b)
xcopy /y ".\Files\reboot-to-holoiso.ico" %ALLUSERSPROFILE%\reboot-to-holoiso\
xcopy /y ".\Files\Reboot to HoloISO.lnk" %PUBLIC%\Desktop