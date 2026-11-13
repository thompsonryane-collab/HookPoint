@echo off
rem HOOKPOINT - Windows desktop launcher
rem Place this file next to HOOKPOINT.html. Opens it as a standalone app window (no tabs, no address bar).
rem Usage: double-click, or run "HOOKPOINT-Windows.bat laptop|desktop|studio" to size the window.
setlocal
set "HERE=%~dp0"
set "FILE=%HERE%..\index.html"
if not exist "%FILE%" set "FILE=%HERE%index.html"
if not exist "%FILE%" set "FILE=%HERE%HOOKPOINT.html"
if not exist "%FILE%" ( for %%F in ("%HERE%HOOKPOINT*.html") do set "FILE=%%~fF" )
if not exist "%FILE%" ( echo HOOKPOINT.html not found next to this launcher. & pause & exit /b 1 )
set "SIZE=1366,800"
if /I "%~1"=="desktop" set "SIZE=1920,1200"
if /I "%~1"=="studio"  set "SIZE=2560,1440"
if /I "%~1"=="laptop"  set "SIZE=1366,800"
set "URL=%FILE:\=/%"
set "URL=file:///%URL: =%%20%"
set "BROWSER="
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" set "BROWSER=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not defined BROWSER if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" set "BROWSER=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if not defined BROWSER if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "BROWSER=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not defined BROWSER if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "BROWSER=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not defined BROWSER if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "BROWSER=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not defined BROWSER ( echo Microsoft Edge or Google Chrome is required. & start "" "%FILE%" & exit /b 0 )
start "" "%BROWSER%" --app="%URL%" --window-size=%SIZE% --user-data-dir="%LocalAppData%\HOOKPOINT\profile" --no-first-run --no-default-browser-check
endlocal
