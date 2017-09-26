#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Se requiere un directorio"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "$1 no exite o no es un directorio"
	exit 2
fi

archivos=$(ls $1)
echo $archivos

for archivo in $archivos
do
	if [ -f $archivo ]; then
	echo $archivo
	
		if [ -r $archivo ]; then
		let lectura=$lectura+1
		fi

		if [ -w $archivo ]; then
		let escritura=$escritura+1
		fi
	fi	
done

echo "Existen $lectura archivos con permisos de lectura y $escritura  con permisos de escritura."


exit 0


