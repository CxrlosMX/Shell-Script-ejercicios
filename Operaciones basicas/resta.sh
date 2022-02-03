#!/bin/bash
echo "Resta"
read -p "Introduce un numero: " n1
read -p "Introduce otro numero: " n2
echo "El resultado de la resta es : " $(($n1 - $n2))
