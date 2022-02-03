#!/bin/bash
#Calculadora
#Creamos el archivo txt
echo "Introduce el nombre de la carpeta donde se guardaran las operaciones: "
read carpeta
mkdir $carpeta
echo "Que operaciones aritmetica desea realizar:Selecciona una opcion:  "
echo "1.-Suma 2.-Resta 3.-Multiplicación 4.-Division"
read opcion
resultado=0

if [ $opcion == "1" ]; then
	echo "Suma"	 
	echo "Introduce el primer número: "
	read n1
	echo "Introduce el segundo número: "
	read n2
	resultado=$(( $n1 + $n2))
	echo "Resultado de la suma es: " $resultado
	#Creamos el archivo txt 
	echo $resultado >> $carpeta/Suma.txt 
elif [ $opcion == "2" ]; then
	echo "Resta"
        echo "Introduce el primer número: "
        read n1
        echo "Introduce el segundo número: "
        read n2
        resultado=$(( $n1 - $n2))
        echo "Resultado de la resta es: " $resultado
	echo $resultado >> $carpeta/Resta.txt
elif [ $opcion == "3" ]; then
        echo "Multiplicacion"
        echo "Introduce el primer número: "
        read n1
        echo "Introduce el segundo número: "
        read n2
        resultado=$(( $n1 * $n2))
        echo "Resultado de la multiplicacion es: " $resultado
        echo $resultado >> $carpeta/Multiplicacion.txt
elif [ $opcion == "4" ]; then
        echo "División"
        echo "Introduce el primer número: "
        read n1
        echo "Introduce el segundo número: "
        read n2
        resultado=$(( $n1 - $n2))
        echo "Resultado de la división es: " $resultado
	echo $resultado >> $carpeta/Division.txt
else 
echo "Introduce una opción valida"
fi	
