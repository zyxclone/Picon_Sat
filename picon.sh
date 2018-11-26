#!/bin/sh

carpetapicon='picon.movistar.transparent.19.2'
ubicacionpicon='/media/hdd/'
sizepicon='220,132'

echo 'Creamos el enterno descarga'
mkdir entornopicon
cd /entornopicon/
echo 'Empezamos la descarga de los picones deseados'
curl https://codeload.github.com/spainE2/Picon_Enigma2_Sat/tar.gz/master | \
  tar -xz --strip=2 Picon_Enigma2_Sat-master/$carpetapicon
echo 'Descargamos utilidad resize tamaño picon'
wget https://raw.githubusercontent.com/spainE2/Picon_Enigma2/master/picon_resize.py
echo 'le damos permiso de ejecucion'
chmod 755 picon_resize.py
sed -i 's/440,264/'$sizepicon'/g' "picon_resize.py"
echo 'Se procede a redimensionar picon'
python picon_resize.py
echo 'Movemos los picones redimensionados al directorio que deseemos'
cp -r /entornopicon/picon/ $ubicacionpicon
echo 'Borramos el entorno'
rm -r /entornopicon/
echo 'Finalizado'
