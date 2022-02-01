;;;===,,,@echo off
;;;===,,,findstr /v "^;;;===,,," "%~f0" > "%~dp0ps.ps1"
;;;===,,,PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dp0ps.ps1'"
;;;===,,,del /s /q "%~dp0ps.ps1" >NUL 2>&1
;;;===,,,pause
;;;===,,,exit

Write-Host @'
************************
* Author: @JokerSilent *
************************
'@`n

function RefreshPath {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
                ";" +
                [System.Environment]::GetEnvironmentVariable("Path","User")
}

Add-Type -AssemblyName PresentationFramework
$git = [System.Windows.MessageBox]::Show('Git esta instalado en tu sistema?', 'Instalacion de Git', 'YesNoCancel');

if ($git -eq 'Yes') {
Write-Host "`nSe omitio la instalacion de Git :/"
}

if ($git -eq 'No') {
Write-Host "`nDescargando el instalador de Git :)"
Start-Process "https://git-scm.com/download/win"
Write-Host "Instale Git utilizando el instalador descargado y vuelva aqui una vez hecho esto.`n"
Read-Host "Si Git esta/ba instalado, presione Enter para continuar"
RefreshPath
}

if ($git -eq 'Cancel') {
Write-Host "`nOperacion cancelada :/"
exit
}

Add-Type -AssemblyName PresentationFramework
$bts = [System.Windows.MessageBox]::Show('Desea instalar Spotify Friendly para bloquear anuncios? (Recomendado)', 'Instalacion de Spotify Friendly', 'YesNoCancel');

if ($bts -eq 'Yes') {
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/DevHubble/friendly-spotify/main/install.ps1" -OutFile "install.ps1"
.\install.ps1
Remove-Item "install.ps1"
}

if ($bts -eq 'No') {
 Write-Host "`nNo instalar Spotify Friendly :("
 exit
}

 if ($bts -eq 'Cancel') {
 Write-Host "`nOperacion cancelada :/"
 exit
 }
