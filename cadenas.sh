#!/bin/bash
read -p "Introduce una cadena " c1
read -p "Introduce otra cadena " c2
if [ $c1 = $c2 ]; then 
echo "Cadenas Iguales"
else
echo "Cadenas Diferentes"
fi
