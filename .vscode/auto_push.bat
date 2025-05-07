@echo off
cd /d "%~dp0\.."

:: Kiểm tra nếu không có thay đổi staged thì thoát
git diff --cached --quiet
if %ERRORLEVEL%==0 (
    echo Nothing to commit.
    exit /b
)

:: Lấy timestamp từ PowerShell
for /f %%i in ('powershell -command "Get-Date -Format \"yyyy-MM-dd_HH-mm-ss\" "') do set TIME=%%i

:: Commit và push
git add .
git commit -m "Auto commit %TIME%"
git push origin main
