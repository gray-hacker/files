@echo off
title MINISHELL
mode 80, 25
:SHELL
cls
color 1f
echo лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.
echo MINISHELL VERSION 011 (X)
set /p cmd=#
IF %cmd% EQU exit EXIT
IF %cmd% EQU ver GOTO:VER
IF %cmd% EQU ls GOTO:LS
IF %cmd% EQU run GOTO:RUN
IF %cmd% EQU mrun GOTO:HIDDENRUN
IF %cmd% EQU beep GOTO:BEEP
start %cmd%
goto SHELL
:BEEP
echo 
goto shell 
:VER
echo 0.11(X)GPL
timeout 2 >Nul
goto shell
:ls
echo DIRs:
for /d %%d in (*) do echo  %%d 
echo Files:
for %%f in (*.*) do echo  %%f
echo PUSH ANY BUTTON...
pause >nul 
goto shell
:RUN
set /p run=F:
find %run%
start "WINDOWS1-SEPARATED"/B /I /MAX /REALTIME /SHARED %run%
goto shell
:HIDDENRUN
set /p file=?
start /MIN %file% 
goto shell