#!/bin/bash
echo "Desea ver su ruta actual "
read ruta
if [ $ruta == "si" ]; then
 pwd
else 
echo "Introduce si, si quieres acceder a tu ruta"
fi

echo "Deseas crear una carpeta en tu ruta actual:"
read r
if [ $r == "si" ]; then 
   echo "Introduce el nombre de la carpeta"
read nombre
mkdir $nombre
fi
