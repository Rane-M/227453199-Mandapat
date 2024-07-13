@echo off
:: Open five websites
start "" "http://www.google.com"
start "" "http://www.youtube.com"
start "" "http://www.netacad.com"
start "" "http://www.github.com"
start "" "http://www.facebook.com"

:: Launch Calculator
start calc.exe

:: Launch Notepad
start notepad.exe

:: Wait for 30 seconds
timeout /t 30 /nobreak

:: Initiate system shutdown with a delay of 60 seconds
shutdown /s /t 60

:: Notify the user
echo The system will shutdown in 60 seconds.
pause
