#!/bin/bash

bin="/home/bin"


#pregunto si el directorio /home/bin existe, sino creo el directorio
if [ ! -e $bin ]; then
	mkdir $bin
else
	if [ ! -d $bin ]; then
		mkdir $bin
	fi
fi

#busco en el directorio actual los ejecutables
archivos=$( ls | grep '*')

for arc in $archivos ; do
	mv $arc "$bin/"
	echo "$arc"
done

#cuento e imprimo la cantidad de archivos ejecutables
cant=$( ls | grep -c '*')
echo "Cantidad de archivos ejecutables: $cant "

exit 0
