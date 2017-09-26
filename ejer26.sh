#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Pasar al menos 1 usuario"
	exit 1
fi
rutas=$*
i=0
dos=2
for rut in $rutas
do
	let i=$i+1
	if [ $(($i%2)) -ne 0 ]; then
		if [ -e $rut ]; then
			if [ -f $rut ]; then
				echo "$rut es un archivo"
			fi
			if [ -d $rut ]; then
				echo "$rut es un directorio"
			fi
		else
			echo "$rut no existe"
		fi
	fi
done
exit 0

