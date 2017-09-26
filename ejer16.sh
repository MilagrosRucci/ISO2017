#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Debe pasar solo una extension"
	exit 3
fi
var=$1
cant_Arch=$(ls | grep -c ".$var")
user=`whoami`
echo "$user $cant_Arch" >> reporte.txt
 
exit 0
