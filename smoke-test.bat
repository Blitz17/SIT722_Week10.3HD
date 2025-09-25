@echo off
set URL=http://%INGRESS_HOST%/health
for /L %%i in (1,1,3) do (
    powershell -Command "Invoke-WebRequest -Uri '%URL%' -UseBasicParsing" >nul 2>&1
    if %errorlevel% equ 0 exit /b 0
    timeout /t 2 >nul
)
exit /b 1
