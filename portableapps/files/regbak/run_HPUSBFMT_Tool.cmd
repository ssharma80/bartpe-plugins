@echo off
rem -------------------------------------------------------------------------
rem Script to start run_HPUSBFMT_Tool
rem Created by Shantanu Sharma
rem -------------------------------------------------------------------------
echo Starting...
setlocal
if "%temp%" == "" goto _err
if exist "%temp%\portableapps\regbak\RecoverTool_V2.00.42_M1223 8CE.exe" goto _run
echo run_HPUSBFMT_Tool.cmd: Copying "%~dp0*.*" to "%temp%\portableapps\regbak\"
xcopy /s "%~dp0*.*" "%temp%\portableapps\regbak\"
:_run
start %temp%\portableapps\regbak\RecoverTool_V2.00.42_M1223 8CE.exe
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