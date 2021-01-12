@echo off
title Mini File Manager
:list
cls
set cnt=0
set cnt1=0
for %%A in (*) do set /a cnt+=1
for /d %%A in (*) do set /a cnt1+=1
color 1f
echo ∞∞∞∞∞∞∞∞∞∞±±±±±±≤≤≤≤≤≤≤≤≤≤€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤±±±±±±∞∞∞∞∞∞∞∞∞∞
echo.
echo  Directories:
echo.
for /d %%d in (*) do echo     %%d
echo.
echo  Files:
echo.
for %%f in (*.*) do echo     %%f 
echo ________________________________________________________________________________
echo                  TOTAL FILES:%cnt%      TOTAL DIRECTORIES:%cnt1% 
echo ________________________________________________________________________________
set /p action=
%action% 
goto list

