@echo off
cd /d "%~dp0"
git add .

rem Lấy thời gian hiện tại
for /f %%i in ('powershell -command "Get-Date -Format \"yyyy-MM-dd_HH:mm:ss\" "') do set TIMESTAMP=%%i

git commit -m "Auto commit %TIMESTAMP%"
git push origin main
