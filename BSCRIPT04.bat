@echo off
setlocal enabledelayedexpansion

:: Define directories
set sourceDir=C:\path\to\text\files
set archiveDir=Z:\archive

:: Create archive directory if it does not exist
if not exist "%archiveDir%" mkdir "%archiveDir%"

:: Sort text files by date and move older files to the archive
echo Sorting and moving older text files...
forfiles /p "%sourceDir%" /s /m *.txt /d -30 /c "cmd /c move @file \"%archiveDir%\""

:: Sort archived files by size
echo Sorting archived files by size...
for /f "tokens=*" %%i in ('dir /b /s /o-s "%archiveDir%\*.txt"') do (
    echo %%i >> "%archiveDir%\sorted_files_by_size.txt"
)

:: Prompt user for permission to delete large files
echo The following large files are found in the archive:
type "%archiveDir%\sorted_files_by_size.txt"
set /p delConfirm="Do you want to delete these files? (Y/N): "
if /i "%delConfirm%"=="Y" (
    for /f "tokens=*" %%i in ('type "%archiveDir%\sorted_files_by_size.txt"') do (
        del "%%i"
    )
    echo Large files deleted.
) else (
    echo Deletion aborted.
)

pause
