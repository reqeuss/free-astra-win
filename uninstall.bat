@echo off
setlocal
title free-astra-win - Desinstallation

echo Cette action desactive free-astra dans Codex sous WSL.
echo Le dossier source et la session Prism ne seront PAS supprimes.
echo.
choice /M "Continuer"
if errorlevel 2 exit /b 0

wsl.exe -e bash -lc "if [ -d \"\$HOME/free-astra-win-upstream\" ]; then cd \"\$HOME/free-astra-win-upstream\" && bash front-door.sh off && bash front-door.sh unservice; else echo 'Le dossier free-astra-win-upstream est introuvable.'; fi"
pause
