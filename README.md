<center>
    <h1 align="center">Spotify Friendly</h1>
    <h4 align="center">Un bloqueador de anuncios multipropósito y skip-bypass para la aplicación de escritorio de Windows Spotify.</h4>
</center>

### Comprobaciones importantes antes de la instalación:
0. Actualiza Windows, actualiza Spotify y actualiza `Spotify Friendly`
1. Vaya a "Seguridad de Windows" -> "Protección contra virus y amenazas"
2. Haga clic en "Amenazas permitidas" -> "Eliminar todas las amenazas permitidas"

### Funciones:
* Bloquea todos los anuncios de banner/vídeo/audio dentro de la aplicación
* Conserva la funcionalidad de amigos, video vertical y radio
* Desbloquea la función de salto para cualquier pista
* Ahora es compatible con la nueva versión Alpha (Nueva interfaz de usuario)

:warning: Este mod es para la [**aplicación de escritorio**](https://www.spotify.com/download/windows/) de Spotify solo en Windows y **no la versión de Microsoft Store**.

### Instalación/Actualización:
* Simplemente descargue y ejecute [instalar.bat](https://raw.githack.com/devhubble/friendly-spotify/master/instalar.bat)  

o

* Ejecutar el siguiente comando en PowerShell:
```ps1
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/devhubble/friendly-spotify/master/magic.ps1' | Invoke-Expression
```

o

1. Ve a tu carpeta de instalación de Spotify `%APPDATA%\Spotify`
2. Renombra `chrome_elf.dll` a `chrome_elf_bak.dll`
2. Descarga `chrome_elf.zip` de [releases](https://github.com/devhubble/friendly-spotify/releases)
3. Descomprime `chrome_elf.dll` y `config.ini` 
4. Sustituye los archivos `chrome_elf.dll` y `config.ini` en la carpeta de instalación

### Desinstalar:
* Solo ejecuta [desinstalar.bat](https://raw.githack.com/devhubble/friendly-spotify/master/desinstalar.bat)
o
* Reinstala Spotify 

### Problemas conocidos:  
* Puede enfrentar un problema [#150] (https://github.com/mrpond/BlockTheSpot/issues/150). Se puede arreglar habilitando la función experimental cuando se usa `instalar.bat`.    
* Solo admitimos la última versión 2 de Spotify (última + anterior). Por favor, compruébelo antes de abrir un problema.

### Notas adicionales:  
* Eliminar el botón "Actualizar" [#83](https://github.com/mrpond/BlockTheSpot/issues/83) y quitar "Marcador de posición de anuncios" [#150](https://github.com/mrpond/BlockTheSpot/issues/150) solo funciona cuando utiliza cualquiera de los métodos de instalación automática y presiona `y` cuando se le solicite.  
* "chrome_elf.dll" es reemplazado por el instalador de Spotify cada vez que se actualiza, por lo tanto, es probable que deba aplicar el parche nuevamente cuando suceda.
* [Spicetify](https://github.com/khanhas/spicetify-cli) los usuarios deberán volver a aplicar `Spotify Friendly` después de aplicar los parches de Spicetify.
* Si los scripts de instalación/desinstalación automática no funcionan, póngase en contacto con [JokerSilent](https://github.com/devhubble)
* For more support and discussions, join our [Discord server](https://discord.gg/p43cusgUPm) 
