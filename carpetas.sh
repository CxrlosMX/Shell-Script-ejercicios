#!/bin/bash
echo "Cuantas carpetas desea crear ?"
read num
for ((i=0; i<num; i+=1));do
echo "Introduce el nombre de la carpeta " $(( $i + 1))
read nombre 
mkdir $nombre
echo "Carpeta $nombre, creada con exito"
nombre=""
done
