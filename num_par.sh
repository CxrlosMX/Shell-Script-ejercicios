#!/bin/bash
read -p "Introduce un numero: " n
if (( $n % 2 == 0 )); then
 echo "El numero es par"
else 
echo "El numero es impar"
fi
