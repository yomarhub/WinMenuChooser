@echo off
@color 2
:start
echo ====================================================
echo =============Menu=Contextuel=Windows================
echo ====================================================
echo.
echo.
echo 	1) Menu Windows 10
echo 	2) Menu Windows 11
echo.
echo.
set /p r="Ecrire le numéro du menu choisis : "
if %r% == 1 goto win10
if %r% == 2 goto win11
cls
echo Error Please Restart Choosing .....
echo ....................................................
goto start


:win10
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\inprocServer32" /f /ve
goto end

:win11
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
goto end

:end
set /p rt="Do you want to restart now ? (Y/n) : "
if %rt% == Y shutdown /r /t 10
if %rt% == y shutdown /r /t 10