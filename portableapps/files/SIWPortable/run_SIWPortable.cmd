@echo off
rem -------------------------------------------------------------------------
rem Script to start AbiWord Portable
rem Created by Shantanu Sharma
rem -------------------------------------------------------------------------
echo Starting...
setlocal
if "%temp%" == "" goto _err
if exist "%temp%\portableapps\SIWPortable\SIWPortable.exe" goto _run
echo run_AbiWordPortable.cmd: Copying "%~dp0*.*" to "%temp%\portableapps\SIWPortable\"
xcopy /s "%~dp0*.*" "%temp%\portableapps\SIWPortable\"
:_run
start %temp%\portableapps\SIWPortable\SIWPortable.exe
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