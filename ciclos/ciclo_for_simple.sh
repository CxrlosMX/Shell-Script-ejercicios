#!/bin/bash
#La linea #! ==> shebang
#Un Simple ciclo for para calcular el factorial de un número ingresado por teclado
echo "Factorial de un número usando el ciclo for"
echo "Ingrese el primer número"
read num1
# `` ==> Acento grave
# '' ==> Acento Agudo
for i in `seq 1 $(( num1-1 ))`
do
num1=$(( i * num1 ))
done
echo "El factorial es; "
echo $num1

