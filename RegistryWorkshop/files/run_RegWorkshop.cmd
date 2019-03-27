@echo off
rem -------------------------------------------------------------------------
rem Script to start Registry Workshop 4.2.6
rem Created by Shantanu Sharma
rem -------------------------------------------------------------------------
echo Starting...
setlocal
if "%temp%" == "" goto _err
if exist "%temp%\portableapps\RegistryWorkshop\RegWorkshop.exe" goto _run
echo run_RegWorkshop.cmd: Copying "%~dp0*.*" to "%temp%\portableapps\RegistryWorkshop\"
xcopy /s "%~dp0*.*" "%temp%\portableapps\RegistryWorkshop\"
:_run
start %temp%\portableapps\RegistryWorkshop\TorchReg.cmd
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