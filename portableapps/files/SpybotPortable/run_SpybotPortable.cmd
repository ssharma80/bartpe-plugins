@echo off
rem -------------------------------------------------------------------------
rem Script to start AbiWord Portable
rem Created by Shantanu Sharma
rem -------------------------------------------------------------------------
echo Starting...
setlocal
if "%temp%" == "" goto _err
if exist "%temp%\portableapps\SpybotPortable\SpybotPortable.exe" goto _run
echo run_AbiWordPortable.cmd: Copying "%~dp0*.*" to "%temp%\portableapps\SpybotPortable\"
xcopy /s "%~dp0*.*" "%temp%\portableapps\SpybotPortable\"
:_run
start %temp%\portableapps\SpybotPortable\SpybotPortable.exe
goto _end
:_err
echo.
echo No temp variable set...
echo Try adding a ramdrive...
echo.
pause.
:_end
endlocal
cls
exit