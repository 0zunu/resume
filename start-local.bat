@echo off
cd /d "%~dp0"

where py >nul 2>nul
if %errorlevel% equ 0 goto run-py

where python >nul 2>nul
if %errorlevel% equ 0 goto run-python

echo Python tidak ditemukan. Instal Python untuk menjalankan server lokal.
pause
exit /b 1

:run-py
echo Server lokal akan tersedia di http://localhost:8000
echo Tekan Ctrl+C untuk menghentikan server.
py -m http.server 8000
goto end

:run-python
echo Server lokal akan tersedia di http://localhost:8000
echo Tekan Ctrl+C untuk menghentikan server.
python -m http.server 8000

:end