@echo off
setlocal EnableExtensions
title free-astra-win - Installation

echo.
echo  free-astra-win
echo  Windows launcher for Zhao73/free-astra
echo.

where wsl.exe >nul 2>&1
if errorlevel 1 (
  echo [ERREUR] WSL n'est pas disponible sur ce PC.
  echo Installe WSL depuis PowerShell administrateur avec : wsl --install
  pause
  exit /b 1
)

echo [INFO] Installation et execution dans Ubuntu/WSL.
echo [INFO] Codex CLI doit etre installe et connecte DANS WSL.
echo.

wsl.exe -e bash -lc "set -e; if ! command -v git >/dev/null 2>&1; then echo 'Git est requis dans WSL. Installe-le avec: sudo apt update ^&^& sudo apt install git'; exit 1; fi; if [ ! -d \"\$HOME/free-astra-win-upstream/.git\" ]; then git clone https://github.com/Zhao73/free-astra.git \"\$HOME/free-astra-win-upstream\"; else git -C \"\$HOME/free-astra-win-upstream\" pull --ff-only; fi; cd \"\$HOME/free-astra-win-upstream\"; python3 -m pip install --user zstandard; bash install.sh"
if errorlevel 1 (
  echo.
  echo [ERREUR] L'installation a echoue. Lis les messages WSL ci-dessus.
  pause
  exit /b 1
)

echo.
echo [OK] Installation terminee.
pause
