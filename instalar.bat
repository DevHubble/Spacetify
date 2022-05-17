;;;===,,,@echo off
;;;===,,,TITLE Instalar Spacetify-JokerDev
powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/DevHubble/Spacetify/main/magic.ps1' | Invoke-Expression}"
pause
exit /b
