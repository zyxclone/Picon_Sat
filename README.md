<h1 align="center">
<a href="https://github.com/spainE2/Picon_Enigma2_Sat"><img src="https://image.ibb.co/kwmS1V/ndice.png" alt="Picones Satelites Enigma2" width=200"></a>
  <br>
    <br>
  Picones Enigma2 Satelite Alta Calidad
  <br>
</h1>

<p align="center">
  <a href="https://openspa.info/">
    <img src="https://raw.githubusercontent.com/spainE2/Picon_Enigma2_Sat/master/lo1.png" alt="Soporte Openspa">
  </a>
  <a href="https://openspa.info/conversations/add?to=pelajustrana">
    <img src="https://raw.githubusercontent.com/spainE2/Picon_Enigma2_Sat/master/user1.png" alt="Contacto pelajustrana">
  </a>
  <a href="https://openspa.info/conversations/add?to=Тайна го">
    <img src="https://raw.githubusercontent.com/spainE2/Picon_Enigma2_Sat/master/user2.png" alt="Contacto tañha ro">
  </a>
</p>

## Introduccion

Este repositorio ha sido creado con la intencion de crear picones para receptores enigma2 basados en la mosca original que usan los canales tv a traves del satelite en su retrasmision. La mayoria son creados a partir del diseño original, es decir emulando el diseño primario y usando las mismas font de texto de estos diseños, lo que permite el control del tamaño y calidad, que hace que se intente que el tamaño final sea de alta calidad. Los picones son subidos a tamaño 440x264 en formato .png que permite que no se pierda calidad en el redimensionado de los mismos en los diferentes skin que los usuarios usen en sus receptores.

<a href="https://ibb.co/e8cEFq"><img src="https://preview.ibb.co/hhwVoA/mosaico-800.png" alt="mosaico-800" border="0"></a>


## Comunidad

Sientese libre de compartir si lo desea los picones que creamos, los mismos se realizan de libre distribucion, respetando la licencia de los mismos, en el caso de distribuirlos por las distintas comunidades enigma2. En la actualidad los mismos son distribuidos en distintas web:


- [foro OpenSpa](https://openspa.info/) y en imagen Openspa a traves de panel Extra


---

## Tabla de Contenidos

1. **[Descarga picon Manual](#1-Descarga-picon-Manual)**
2. **[Descarga picon Redimensionado](#2-Descarga-picon-Redimensionado)**
3. **[Descarga picon PanelExtra OpenSpa](#3-Descarga-picon-PanelExtra-OpenSpa)**


---

## 1. Descarga picon Manual

En este metodo podemos descargar en nuestro PC todo el github completo, donde los picones seran al tamaño original que los subimos, es decir a tamaño 440x264, donde tendremos todos los picones separados por las carpetas segun el tipo de picon, y podemos copiar los que deseemos e introducirlos manualmente en nuestro receptor.

a) Pulsamos sobre el [siguiente enlace](https://github.com/spainE2/Picon_Enigma2_Sat/archive/master.zip) para descargar los picon

b) Tendremos una archivo **Picon_Enigma2_Sat-master.zip** en nuestro pc

c) Descomprimimos el archivo y tendremos varias carpetas, en cada carpeta estaran los picones en formato .png

d) Introducimos los .png que deseemos en el interior de la carpeta picon de nuestro receptor, en caso de que nuestro receptor no tenga la carpeta picon la creamos, los directorios mas comunes donde la podemos crear son:

* /usr/share/enigma
* /media/hdd
* /media/usb

---

## 2. Descarga picon Redimensionado

En este metodo podemos usar un script que ejecutaremos en nuestro receptor (este script lo podemos modificar), para que de esta manera automaticamente:

* Se descarguen los picones correspondientes solo a uno de los modelos que estan subidos (es decir no todo el git si no solo una carpeta)
* Estos picones una vez descargados se redimensionen en nuestro receptor
* Una vez redimensionados se muevan al directorio que deseemos del receptor

Para la realizacion de este metodo es necesario que nuestro receptor tenga instalado previamente unos requisitos, para ello por telnet es necesario instalarlos, de esta manera:

`opkg install curl`

`opkg install python-imaging`

Una vez nuestro receptor tiene los requisitos instalados, se realizan los siguientes pasos:

a) Pulsamos sobre boton derecho y guardar como sobre el archivo [picon.sh](https://github.com/spainE2/Picon_Enigma2_Sat/blob/master/picon.sh)

b) Lo abrimos con un editor de texto recomendable notepad++, y vamos a tener en cuenta los parametros de edicion del mismo que seran los siguientes:

```
carpetapicon='picon.movistar.transparent.19.2'
ubicacionpicon='/media/hdd/'
sizepicon='220,132'

```
1. En opcion **carpetapicon** introducimos la carpeta picon de los disponibles en el github que deseamos descargar, las opciones actuales son:

* picon.fta.black.19.2
* picon.fta.transparent.19.2
* picon.movistar.black.19.2
* picon.movistar.transparent.19.2
* picon.sky.black.19.2
* picon.sky.transparent.19.2
* picon.elevensport.black.13
* picon.elevensport.transparent.13
* picon.elite.black.19.2
* picon.elite.transparent.19.2
* picon.orf.black.19.2
* picon.orf.transparent.19.2

2. En opcion **ubicacionpicon** introducimos el directorio de nuestro receptor donde se ubicaran los picones ya redimensionados, lo mas normal sera usar uno de los siguientes directorios:

* /media/hdd/
* /media/usb/
* /usr/share/enigma2/

3. En opcion **sizepicon** introducimos el tamaño al que deseamos redimensionar los picones (el primer parametro es el ancho el segundo el alto), los tamaños de los picones mas tipicos podrian ser:

* 440,264
* 220,132
* 100,60

Una vez terminado la edicion del script guardamos cambios en el mismo.

c) A continuacion introducimos el archivo picon.sh editado en el directorio /usr/bin de nuestro receptor y le damos permiso de ejecucion, para ello desde telnet ejecutamos:

`chmod 755 /usr/bin/picon.sh`

d) Para finalizar desde telnet ejecutamos el siguiente comando a traves de telnet(estar situado en la raiz de archivos root del receptor)

`sh /usr/bin/picon.sh`

Y de este modo tendremos los picones redimensionados al tamaño elejido de la carpeta de picones que hemos querido descargar.

## 3. Descarga picon PanelExtra OpenSpa

Para quien use en su receptor imagenes del Team Openspa esta disponible la descarga de los picones que realizamos desde el plugin PanelExtra, el tamaño en este caso de la instalacion sera en tamaño 440x264.
