#!/bin/bash 
#Ciclo while para duplicar un número hasta que el usuario decida que pare
echo -e "Duplicar\n ingrese un número"
#Leer el dato introducido por el usuario
read num
#mensaje
echo "Desea Duplicar? "
#Leer la  opcion introducida por el usuario
read opcion
#los datos que van dentro de los corchetes [ van con un espacio de separacion]
while [ $opcion = "si" ];do
let num*=2
echo "Desea duplicar de nuevo?"
read opcion
done
echo "El número es: $num"
