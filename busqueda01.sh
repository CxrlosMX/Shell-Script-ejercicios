#!/bin/bash

fichero=$(ls)
echo $fichero
echo "---------MENU------"
echo "Elija una opción por favor: "
echo "1.- Buscar Archivos con extención (.txt)"
echo "2.- Buscar Archivos con extención (.rar)"
echo "3.- Buscar Archivos con extención (.tar.gz)"
echo "4.- Buscar Archivos con extención (.zip)"
echo "5.- Buscar Archivos con extención (.docx)"
echo "6.- Buscar Archivos con extención (.pptm)"
read opcion

#Validamos opción
if [[ $opcion == "1" ]]; then 
	echo "Archivos ----> .txt"	
	ls *.txt

elif [[ $opcion == "2" ]];then
	echo "Archivos ----> .rar" 
	ls *.rar
elif [[ $opcion == "3" ]];then
        echo "Archivos ----> .tar.gz"
        ls *.tar.gz
elif [[ $opcion == "4" ]];then
        echo "Archivos ----> .zip"
        ls *.zip
elif [[ $opcion == "5" ]];then
        echo "Archivos ----> .docx"
        ls *.docx
elif [[ $opcion == "6" ]];then
        echo "Archivos ----> .pptm"
        ls *.pptm

else 
echo "Introduce una opción correcta"

fi
