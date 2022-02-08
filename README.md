<center>
    <h1 align="center"><a href="https://github.com/DevHubble"><img src="https://github.com/DevHubble/friendly-spotify/blob/main/Spacetify.png?raw=true" width="600px"></a></h1>
    <h4 align="center">Un bloqueador de anuncios multipropósito y skip-bypass para la aplicación de escritorio de Windows Spotify.</h4>
</center>

### Funciones:
* Bloquea todos los anuncios de banner/vídeo/audio dentro de la aplicación
* Conserva la funcionalidad de amigos, video vertical y radio
* Desbloquea la función saltar canciones sin límite
* Ahora es compatible con la nueva versión Alpha (Nueva interfaz de usuario)

:warning: Este mod es solo para la --> [**aplicación de escritorio**](https://www.spotify.com/download/windows/) de Spotify solo en Windows y **no la versión de Microsoft Store**.

### Requisitos:
* Tener --> [**Git**](https://git-scm.com/download/win) instalado en tu sistema

### Instalar/Actualizar:
* Simplemente descargue y ejecute este --> [**instalador**](https://raw.githack.com/devhubble/friendly-spotify/master/instalar.bat)  

o

* Ejecutar el siguiente comando en PowerShell:
```ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/devhubble/friendly-spotify/master/magic.ps1' | Invoke-Expression
```

o

1. Ve a tu carpeta de instalación de Spotify `%APPDATA%\Spotify`
2. Renombra `chrome_elf.dll` a `chrome_elf_bak.dll`
2. Descarga `chrome_elf.zip` de --> [**releases**](https://github.com/devhubble/friendly-spotify/releases)
3. Descomprime `chrome_elf.dll` y `config.ini` 
4. Sustituye los archivos `chrome_elf.dll` y `config.ini` en la carpeta de instalación

### Desinstalar:
* Solo ejecuta el --> [**desinstalador**](https://raw.githack.com/devhubble/friendly-spotify/master/desinstalar.bat)
o
* Reinstala Spotify 

 
<details>
<summary>Nota</summary>
  Si los scripts de instalación/desinstalación automática no funcionan, póngase en contacto con JokerDev https://github.com/devhubble
</details>
