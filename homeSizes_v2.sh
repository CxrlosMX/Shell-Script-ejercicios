#!/bin/bash
#Verificamos la variable 
#Verificamos la variable $EUID si contiene el UID del usuario, el UID del usuario por defecto es 0, por lo que en la comparación
#Verificaremos si $EUID es diferente de 0 entonces quiere decir que no esta accediendo como root
if [[ "$EUID" -ne 0 ]]
        then echo "Error no se ha ejecutado como root este script"
else
ls -l /home #Mostramos
#El comando ls -l muestra los permisos de cada archivo, el numero de archivos contenidos dentro del directorio, el propietario etc
fi

