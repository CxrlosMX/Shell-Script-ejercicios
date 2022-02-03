#!/bin/bash
#Genera un script con nombre personas.sh que registre 10 personas con los siguientes datos
read -p "Ingrese la cantidad de personas que desea registrar: " num1
cadena="" #Cadena para almacenar los valores, datos de cada una de las personas
for i in `seq $num1` #Recorremos hasta n
do
	cadena="" #Vaciamos nuestra cadena, para evitar concatenaciones
	read -p "Ingrese su nombre completo: " nombre
	 read -p "Ingrese su edad:" edad
	 read -p "Ingrese su dirección: " direccion
	 read -p "Ingrese su telefono: " telefono
	 read -p "Ingrese su  Email: " email

	#Almacenamos los valores en la variable cadena y concatenamos
	cadena=$nombre"|"$edad"|"$direccion"|"$telefono"|"$email
	array[$i-1]=$cadena #Agregamos el valor a la cadena
	echo "Persona $nombre registrada con exito"
done

#Mostramos el arreglo
echo "Mostrando personas"
for((j=0;j<${#array[*]};j++))
do
echo ${array[j]} #Mostramos
done
