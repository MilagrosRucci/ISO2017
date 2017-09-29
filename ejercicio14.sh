#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Se quiere al menos un parámetro"
	exit 1
fi

if [ $# -ne 3 ]; then
	echo "Se requieren tres parámetros"
	exit 2
fi

if [ ! -d $1 ]; then
	echo "$1 no es un directorio o no existe"
	exit 3
fi

archivos=$(ls $1)
for arc in $archivos; do
	echo $arc
	if [ $2 == -a ]; then
		cp $1/$arc $1/$arc$3
		#Renombrar se hace en realidad con el mv de esta misma forma. o sea, mv $1/$arc $1/$arc$3
		#el copy 'cp' mantiene dos archivos, con difentes nombres el move 'mv' elimina el primero y lo guarda con el
		#segundo nombre
	fi
	if [ $2 == -b ]; then
		cp $1/$arc $1/$3$arc
	fi
done

exit 0

