#!/bin/bash
#Realiza un script que simule un cajero automatico
echo "REGISTRO USUARIOS"
saldo=5000
pNuevo=5
respaldoC=""
pos=0
usActual=""
for((i=0;i<5;i++))
do
  #Ingresa el nombre de cada usuario
  read -p "Ingrese el nombre completo del usuario $(( $i +1 )): " nombre
  #Agregamos el usuario a la lista
  array[$i]=$nombre
  echo "Persona $nombre registrada con exito"
done
#--------------------------------Agregamos saldo a sus cuentas
for((j=5;j<10;j++))
do
	array[$j]=$saldo
done 

echo ${array[*]}
echo "------------------------------------------"
#Variable bandera
c="0"

#Mientras se cumpla la condicion se ejecutara el bucle
while [[ $c == "0" ]]; do
	#Opciones que el usuario elije 
	echo "BANCO DE CONFIANZA"
	echo "1.-Iniciar Sesion"
	echo "2.-Salir"
	read op
	
	#case 1---opcion principal
	case $op in
		
	"1")
	read -p "Ingrese su nombre de usuario: " n1
	#Recorremos para buscar nombre
	#---------------------------------
	for((m=0;m<${#array[*]};m++))	
	do
	if [[ ${array[m]} == $n1 ]]; then #Si el nombre introducido coincide con alguno lo almacenamos
	#Almacenamos el nombre y su posicion
	respaldoC=$n1
	pos=$m
	#echo $pos
	#echo $n1
	fi
	done
	#---------------------
	if [[ $respaldoC == $n1 ]]; then #Si encontro el usuario muestra el menu del cajero
		echo "Bienvenido de nuevo $n1"
		#Variables de uso
		con="0"
		#-----------Bucle01 inicio  menu 2
		while [[ $con == "0" ]]; do
		echo "---------------------------"
		echo "CAJERO AUTOMATICO"
		echo "Selecciones una opción por favor:"
		echo "1.-Deposito"
		echo "2.-Transferencia"
		echo "3.-Retiro"
		echo "4.-Consultar"
		echo "5.-Salir"
		read opp
		#case 02 inicio
		case $opp in
		"1") #case 1------Inicio
		#Pregunta la cantidad que deseamos depositar
		read -p "Introduce la cantidad que deseas depositar a tu cuenta: " cantidad
		#Verificamos que la cantidad a depositar sea mayor cero
		if [[ $cantidad -gt 0 ]]; then 
			#Buscamos la posicion del dinero del usuario
			pDinero=$(($pos + $pNuevo)) 
			#Realiamos el deposito
			array[pDinero]=$((array[pDinero] + $cantidad))
			#Mensaje de exito
			echo "Deposito realizado con exito"
		else 
		echo "Introduce un cantidad positiva por favor"
		fi	
		;; #Case 1---Fin
		
		"2") #Case 02---inicio
		#Variable para almacenar el nombre del usuario a transferir 
		nomHost=""
		
		read -p "Introduce el nombre del usuario al que deseas realizar la transferencia: " host
		#Busqueda host		
		#Si introducimos nuestro propio usuario, nos marcara error
		if [[ $host == $n1 ]]; then 
		echo "No puedes hacer transferencias a tu propia cuenta"
			
		else 
		for((k=0;k<${#array[*]};k++)) #Buscamos al usuario
        	do
        	if [[ ${array[k]} == $host ]]; then
        	posHost=$k
		nomHost=$host
        	fi
        	done
		fi
		#Verificamos si encontro al usuario---------
		if [[ $nomHost == $host ]]; then
		#transferencia inicio

			read -p "Introduce la cantidad que deseas transferiar a la cuenta de $host:" ctran
	

		if [[ $ctran -gt 0 ]]; then
                        #Buscamos la posicion del dinero del usuario
                        pDinero=$(($pos + $pNuevo))
			#Verificamos que la cantidad que tenemos en nuestro usuario solvente la 
			#transferencia
			if [[ $ctran -lt ${array[pDinero]} ]]; then 

			#Restamos cantidad al usuario actual en sesion
                        array[pDinero]=$((array[pDinero] - $ctran))
			#---Agregamos cantidad al usuario host
			pos=$(($posHost + $pNuevo))
			array[pos]=$((array[pos] + $ctran))
                        #Mensaje de exito
                        echo "Transferencia realizada con exito al usuario: $host"
			else
			echo "No cuentas con suficiente saldo para realizar esta transferencia" 
			fi
                else
                echo "Introduce un cantidad positiva por favor"
                fi


			
 		#----transferencia fin
		else 
		echo "No se encontro al usuario"
		fi
		#Busqueda fin


		;; #case 02---Fin
	
	
		"3") #Case 03---inicio
		read -p "Ingrese la cantidad que desea retirar: " retiro
		#Verificamos que la cantidad sea mayor a cero
		if [[ $retiro -gt 0 ]]; then
                        #Buscamos la posicion del dinero del usuario
                        pDinero=$(($pos + $pNuevo))
                        #Realiamos el deposito
			if [[ $retiro -le ${array[pDinero]} ]]; then 
                        array[pDinero]=$((array[pDinero] - $retiro))
                        #Mensaje de exito
                        echo "Retiro realizado con exito"
			else
			echo "Tu saldo es insuficiente" 
			fi
                else
                echo "Introduce un cantidad positiva por favor"
                fi
	
                ;; #case 03---Fin
		
		
		"4") #Case 04---inicio
		#Buscamos la posicion del usuario
		pDinero=$(($pos + $pNuevo))
		echo "Usuario: " ${array[pos]}  " Saldo: " ${array[pDinero]} "$"
                ;; #case 04---Fin


		"5") #Case 05---inicio
			con="2"
			echo "Saliendo al ménu principal...."
                ;; #case 05---Fin


		*)
		echo "Selecciona una opcion correcta"
		;;
		esac
		#case 02 fin
		done 
		#------------Bucle01 fin 
			
	else 
	echo "Usuario no encontrado"
	fi
	;;


	"2")
	#El bucle se cierra
	c="2"
	echo "Saliendo ........."
	;;

	
	*)
	#Mensaje si preciona una tecla no valida
	echo "Seleccionada una opción valida"
	;;
	esac
	#cierre case 1---
done 
