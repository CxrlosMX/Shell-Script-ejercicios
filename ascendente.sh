#!/bin/bash 
read -p "Introduce un número por favor: " numero1
read -p "Introduce un segundo número por favor: " numero2 
read -p "Introduce un terce número por favor: " numero3 
if test $numero1 -gt $numero2 
	then
	
	if test $numero1 -gt $numero3
	 then
		if test $numero2 -gt $numero3
		then
			echo "$numero3 $numero2 $numero1"
		else
			echo "$numero2 $numero3 $numero1"
		fi
	else
			echo "$numero2 $numero1 $numero3"
	fi 
	else
	if test $numero1 -gt $numero3
	then
		echo "$numero3 $numero1 $numero2"
	else
		if test $numero2 -gt $numero3
		then
			echo "$numero1 $numero3 $numero2"
		else
			echo "$numero1 $numero2 $numero3"
		fi
	fi 
fi
exit 0
