#!/bin/bash 
echo "Suma de 10 números y el resultado se multiplica por 2"
for (( i=0; i<10; i+=1)); do 
echo "Ingrese el valor de $((i+1))"
read numeros[$i]
let suma+=numeros[$i]
done 
echo "Suma total: $suma"
let m=$(( $suma * 2 ))
echo "Resultado multiplicación *2: $m" 
