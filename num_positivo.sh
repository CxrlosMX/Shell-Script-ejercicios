#!/bin/bash
read -p "Introduce un númer: " num
if [ $num -gt 0 ]; then 
echo "El número es positivo"
elif [ $num -eg 0 ]; then
echo "El numero es neutro"
else  
echo "El número es negativo"
fi
