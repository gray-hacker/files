@echo off
:begin
color 0c
mode 80, 25
echo 
echo                           LIBARY DEVELOPMENT CENTER         
echo _______________________________________________________________________________
echo.
echo.                                                                              
echo.                                                                              �
echo.                        Please Select mode to begin:                          �
echo.                                                                              �
echo.                         1 - CREATE NEW EXECUTABLE                            �
echo.                                                                              �
echo.                         2 - CREATE NEW LIBARY                                �
echo.                                                                              �
echo.                         3 - EDIT LIBARY CLASSES                              �
echo.                                                                              �
echo.                         4 - EXIT                                             �
echo.                                                                              �
echo.                                                                              �
echo.                                                                              �
echo.                                                                              �
echo.                                                                              �
echo.                                                                              �
echo.                                                                              
echo _______________________________________________________________________________
set /p action=mode?
IF %ACTION% EQU 1 GOTO:CNE
IF %ACTION% EQU 2 GOTO:CNL
IF %ACTION% EQU 3 GOTO:ELC
IF %ACTION% EQU 4 EXIT
cls
goto begin
:CNE
cls

echo �������������������������������������������������������������������������������
echo.�������������������������������������������������������������������������������
echo.�                                                                             �
echo.�                                                                             �
echo.�                        Create New Executable Batch                          �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                      Please Enter New Batch File Name:                      �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo �������������������������������������������������������������������������������
set /p newname=
cls
echo �������������������������������������������������������������������������������
echo.�������������������������������������������������������������������������������
echo.�                                                                             �
echo.�                                                                             �
echo.�                        Creating New Executable Batch                        �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                               Plese Wait...                                 �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo �������������������������������������������������������������������������������
timeout 2 >Nul
if exist %newname% del %newname%
echo @echo off > %newname%
echo @echo INITALIZING LIBARIES... >> %newname%
echo set %gdi%=gdilib.bat >> %newname%
goto begin
:CNL
cls
echo �������������������������������������������������������������������������������
echo.�������������������������������������������������������������������������������
echo.�                                                                             �
echo.�                                                                             �
echo.�                          Create GDI Mastered Libary                         �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                             Please Enter Name:                              �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo.�                                                                             �
echo �������������������������������������������������������������������������������
set /p nlname=
if exist %nlname% del %nlname%
echo @echo � > %nlname%
echo ::FILL IS UP::
goto begin
:ELC
cls
echo PLEASE ENTER FILE NAME TO OPEN:
set /p file=
:ELC1
color 0c
cls
echo.
echo                            Contensts of %file%
echo 
type %file%
echo 
echo.
echo. ������������������������������������������������������������������������������
echo. �                                                                            �
echo. �                    *type 1 to enter command-shell                          �
echo. �                                                                            �
echo. ������������������������������������������������������������������������������
set /p echo=$:
IF %echo% EQU 1 GOTO:SHELL
echo ::%file%:: >>%file%
echo ::%time%:: >>%file%
echo ::%echo%:: >>%file%
goto ELC1
:SHELL
cls
color 1f
echo �����������������������������������shell1���������������������������������������
echo.
echo USE %FILE% TO WRITE IN LIBARY. EDITOR SHELL (X), TYPE 0 TO RETURN
echo.
set /p cmd=EDITOR#
IF %cmd% EQU 0 GOTO:ELC1
IF %cmd% EQU exit exit
IF %cmd% EQU ls GOTO:ls
IF %cmd% EQU EXIT exit

start %cmd%
:ls
echo DIRs:
for /d %%d in (*) do echo  %%d 
echo Files:
for %%f in (*.*) do echo  %%f
echo PUSH ANY BUTTON...
pause >nul 
goto shell
goto SHELL                                             