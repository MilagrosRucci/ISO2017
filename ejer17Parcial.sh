#!/bin/bash

#Me quedo solo con los usuarios con shell bash
archivo=$(cat /etc/passwd | grep /bin/bash )

#Proceso cada una de las lineas
for arch in $archivo
do
	#Me quedo con el home y el usuario
	home=$(echo $arch | cut -d: -f6)
	user=$(echo $arch | cut -d: -f1)
	
	if [ -d $home/mailDir ]
	#Si existe el directorio mailDir en su home lo debo agregar al listado.
	then
		$(echo $user >> /var/listado.txt)
	fi
done

exit 0
