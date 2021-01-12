@echo off

title Text Editor
cls
mode 80,25
color f0
echo.
echo                                  Text Editor
echo ________________________________________________________________________________ 
echo.
echo Aviable Files in directory:
echo. 
for %%f in (*.*) do echo  %%f 
echo.
set /p file=Choose an file to edit:
:edit
color f0
cls 
echo.
echo                              %file% - Text Editor
echo ________________________________________________________________________________ 
type %file%
echo.
echo ________________________________________________________________________________
echo                       *TYPE 'SHELL' TO ENETER COMMAND MODE* 
set /p edit=$:
IF %edit% EQU shell GOTO:SHELLMODE
echo %edit% >> %file%
goto edit
:SHELLMODE
cls 
color 1f
echo ллллллллллллллллллллллллллллллллллллshell#1ллллллллллллллллллллллллллллллллллллл
echo.
echo EDITOR SHELL (X), EXIT to return
set /p com=#
IF %COM% EQU exit GOTO:edit
start %com%
goto shellmode