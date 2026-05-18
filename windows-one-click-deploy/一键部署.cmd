@echo off
chcp 65001 >nul
cd /d "%~dp0"
where pwsh >nul 2>nul
if %errorlevel%==0 (
  pwsh -NoProfile -ExecutionPolicy Bypass -File ".\deploy-one-click.ps1" -ConfigPath ".\one-click.config.jsonc" -Interactive
) else (
  powershell -NoProfile -ExecutionPolicy Bypass -File ".\deploy-one-click.ps1" -ConfigPath ".\one-click.config.jsonc" -Interactive
)
echo.
pause
