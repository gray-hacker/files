@echo off
:begin
color 0c
mode 80, 25
echo 
echo                           LIBARY DEVELOPMENT CENTER         
echo _______________________________________________________________________________
echo.
echo.                                                                              
echo.                                                                              В
echo.                        Please Select mode to begin:                          В
echo.                                                                              В
echo.                         1 - CREATE NEW EXECUTABLE                            В
echo.                                                                              В
echo.                         2 - CREATE NEW LIBARY                                В
echo.                                                                              В
echo.                         3 - EDIT LIBARY CLASSES                              В
echo.                                                                              В
echo.                         4 - EXIT                                             В
echo.                                                                              В
echo.                                                                              В
echo.                                                                              В
echo.                                                                              В
echo.                                                                              В
echo.                                                                              В
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

echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.л                                                                             л
echo.л                                                                             л
echo.л                        Create New Executable Batch                          л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                      Please Enter New Batch File Name:                      л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
set /p newname=
cls
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.л                                                                             л
echo.л                                                                             л
echo.л                        Creating New Executable Batch                        л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                               Plese Wait...                                 л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
timeout 2 >Nul
if exist %newname% del %newname%
echo @echo off > %newname%
echo @echo INITALIZING LIBARIES... >> %newname%
echo set %gdi%=gdilib.bat >> %newname%
goto begin
:CNL
cls
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.л                                                                             л
echo.л                                                                             л
echo.л                          Create GDI Mastered Libary                         л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                             Please Enter Name:                              л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo.л                                                                             л
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
set /p nlname=
if exist %nlname% del %nlname%
echo @echo л > %nlname%
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
echo. лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo. л                                                                            л
echo. л                    *type 1 to enter command-shell                          л
echo. л                                                                            л
echo. лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
set /p echo=$:
IF %echo% EQU 1 GOTO:SHELL
echo ::%file%:: >>%file%
echo ::%time%:: >>%file%
echo ::%echo%:: >>%file%
goto ELC1
:SHELL
cls
color 1f
echo лллллллллллллллллллллллллллллллллллshell1ллллллллллллллллллллллллллллллллллллллл
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