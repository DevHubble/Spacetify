
Write-Host @'
               ____ ___  ____ ____ ____ ___ _ ____ _   _ 
               [__  |__] |__| |    |___  |  | |___  \_/  
               ___] |    |  | |___ |___  |  | |      |   
                                                         
                          _,.-------.,_
                      ,;~'             '~;,
                    ,;                     ;,
                   ;                         ;
                  ,' Bypass-JokerDev 01/01/01 ',
                 ,;                           ;,
                 ; ;      .           .      ; ;
                 | ;   ______       ______   ; |
                 |  `/~"     ~" . "~     "~\'  |
                 |  ~  ,-~~~^~, | ,~^~~~-,  ~  |
                  |   |        }:{        |   |
                  |   l   *   / | \   *   !   |
                  .~  (__,.--" .^. "--.,__)  ~.
                  |     ---;' / | \ `;---     |
                   \__.       \/^\/       .__/
                    V| \                 / |V
                     | |T~\___!___!___/~T| |
                     | |`IIII_I_I_I_IIII'| |
                     |  \,III I I I III,/  |
                      \   `~~~~~~~~~~'    /
                        \   .       .   /     
                          \.    ^    ./
                            ^~~~^~~~^

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
$bts = [System.Windows.MessageBox]::Show('Instalar Spacetify para bloquear anuncios? (Recomendado)', 'Instalacion de Spacetify', 'YesNoCancel');

if ($bts -eq 'Yes') {
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/DevHubble/Spacetify/main/magic.ps1" -OutFile "magic.ps1"
.\magic.ps1
Remove-Item "magic.ps1"
}

if ($bts -eq 'No') {
 Write-Host "`nNo instalar Spacetify :("
 exit
}

 if ($bts -eq 'Cancel') {
 Write-Host "`nOperacion cancelada :/"
 exit
 }