@echo off
setlocal enabledelayedexpansion

:menu
cls
echo Select a utility:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
set /p choice="Enter your choice (1-8): "

if "%choice%"=="1" goto ipconfig
if "%choice%"=="2" goto tasklist
if "%choice%"=="3" goto taskkill
if "%choice%"=="4" goto chkdsk
if "%choice%"=="5" goto format
if "%choice%"=="6" goto defrag
if "%choice%"=="7" goto find
if "%choice%"=="8" goto attrib
goto menu

:ipconfig
ipconfig
pause
goto menu

:tasklist
tasklist
pause
goto menu

:taskkill
set /p pid="Enter the PID to kill: "
taskkill /PID %pid%
pause
goto menu

:chkdsk
set /p drive="Enter the drive letter (e.g., C): "
chkdsk %drive%:
pause
goto menu

:format
set /p drive="Enter the drive letter to format (e.g., D): "
echo Warning: This will format the drive and all data will be lost!
pause
format %drive%:
pause
goto menu

:defrag
set /p drive="Enter the drive letter to defrag (e.g., C): "
defrag %drive%:
pause
goto menu

:find
set /p text="Enter the text to find: "
set /p file="Enter the file to search in: "
find "%text%" %file%
pause
goto menu

:attrib
set /p file="Enter the file to change attributes: "
set /p attribs="Enter the attributes (e.g., +r, -r, +h, -h): "
attrib %attribs% %file%
pause
goto menu
