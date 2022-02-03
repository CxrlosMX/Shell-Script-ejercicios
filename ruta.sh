#!/bin/bash
echo "Desea ver su ruta actual: "
read ruta
if [ $ruta == "si" ]; then 
	pwd
fi
