#!/bin/bash
echo "2.-Determinar si un número se encuentra entre el rango de 0-50"
read -p "Introduce un número por favor: " num
if [ $num -gt 0 -a $num -lt 50 ]; then
echo "El número $num se encuentra entre el rango de 0-50"
else 
echo "El número NO entra entre el rango de 0-50"
fi
