#!/bin/bash
echo "4.- Determinar si la suma de dos números es par o impar"
read -p "Introduce un número: " n1
read -p "Introduce un segundo número: " n2
n=$(($n1 + $n2))
echo "Resultado de la suma: $n"
if (( $n % 2 == 0 )); then
 echo "El numero $n es par"
else
echo "El numero $n es impar"
fi





