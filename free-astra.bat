@echo off
setlocal
title free-astra-win - Codex

where wsl.exe >nul 2>&1
if errorlevel 1 (
  echo [ERREUR] WSL n'est pas disponible.
  pause
  exit /b 1
)

wsl.exe -e bash -lc "cd \"$HOME/free-astra-win-upstream\" && codex --model prism-astra"
if errorlevel 1 (
  echo.
  echo [INFO] Verifie que free-astra est installe et que Codex est connecte dans WSL.
  pause
)
