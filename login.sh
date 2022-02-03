#!/bin/bash
#Genera un script que simule un inicio de sesión donde pida el registro de la persona y despues se logue
echo "REGISTRO DE USUARIO"
#Primero pedimos al usuario que se registre
read -p "Introduzca su usuario por favor: " usuario
read -p "Introduzca su contraseña por favor: " pass
#Mensaje de exito
echo "Usuario $usuario registrado con exito"
echo "---------------------"

#Creamos una variable bandera 
c="0"
while [[ $c == "0" ]]; do #While para menu
	#Opciones 
	echo "Bienvenido a SINTELTI"
	echo "1.-Iniciar Sesion"
	echo "2.-Salir"
	read op #Leemos opciones
	
	#case con los casos
	case $op in
	"1")
	#Valida nombre
	read -p "Introduzca su usuario: " u
	if [[ $usuario == $u ]]; then
		read -p "Introduce tu contraseña $u: " p		
		#Valida password
		if [[ $pass == $p ]]; then
		echo "Bienvenido a SINTELTI $u"
		c="2"
		else
		echo "Contraseña incorrecta" 
		fi
	else 
	echo "Nombre de usuario incorrecto"
	fi
	;;
	
	"2")
	c="2" #Rompemos ciclo
	echo "Saliendo..."
	;;
	*)
	echo "Introduce una opcion valida" #Si no ingresa una opcion valida
	;;
	esac 
done 
