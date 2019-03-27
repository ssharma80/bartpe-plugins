@echo off
rem -------------------------------------------------------------------------
rem Script to start regbak
rem Created by Shantanu Sharma
rem -------------------------------------------------------------------------
echo Starting...
setlocal
if "%temp%" == "" goto _err
if exist "%temp%\portableapps\regbak\regbak.exe" goto _run
echo run_regbak.cmd: Copying "%~dp0*.*" to "%temp%\portableapps\regbak\"
xcopy /s "%~dp0*.*" "%temp%\portableapps\regbak\"
:_run
start %temp%\portableapps\regbak\regbak.exe
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