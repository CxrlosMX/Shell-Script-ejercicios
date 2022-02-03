#!/bin/bash 
#Para crear un script 
echo "Suma de dos numeros ingresados por el usuario"
read -p "Ingresa un numero: " n1
read -p "Ingrese un numero: " n2
echo "Resultado suma " $(($n1 + $n2))
